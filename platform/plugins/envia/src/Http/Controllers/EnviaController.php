<?php

namespace Botble\Envia\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Enums\ShippingStatusEnum;
use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\Shipment;
use Botble\Ecommerce\Models\ShipmentHistory;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Envia\Envia;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Throwable;

class EnviaController extends BaseController
{
    protected string|int|null $userId = 0;

    public function __construct(protected Envia $envia)
    {
        if (is_in_admin(true) && Auth::check()) {
            $this->userId = Auth::id();
        }
    }

    public function show(int $id, BaseHttpResponse $response)
    {
        $shipment = Shipment::query()->findOrFail($id);
        $this->check($shipment);
        $order = $shipment->order;
        $content = '';
        $errors = [];

        try {
            $shipmentData = $this->envia->getShipment($shipment->shipment_id);

            if ($shipmentData && Arr::get($shipmentData, 'status') == 'success') {
                $rate = [];
                $payment = $order->payment;

                if ($payment->payment_channel->getValue() == PaymentMethodEnum::COD) {
                    $codAmount = Arr::get($shipmentData, 'amount');
                    if ($codAmount && $order->amount != $codAmount) {
                        $shipmentData = $this->refreshShipment($shipmentData, $order);
                        $rates = Arr::get($shipmentData, 'data.rates', []);
                        $rate = Arr::first($rates, fn($value) => Arr::get($value, 'carrier_service') == $order->shipping_option);

                        if ($rate) {
                            $shipment->shipment_id = Arr::get($shipmentData, 'data.id');
                            $shipment->rate_id = Arr::get($rate, 'id');
                            $shipment->save();
                        }
                    }
                }

                if (!$rate) {
                    $rates = Arr::get($shipmentData, 'data.rates', []);
                    $rate = Arr::first($rates, fn($value) => Arr::get($value, 'id') == $shipment->rate_id);
                }

                $content = view('plugins/envia::info', compact('rate', 'shipmentData', 'shipment', 'order'))->render();
            } else {
                $errors[] = Arr::get($shipmentData, 'message', trans('plugins/envia::envia.shipment_not_found'));
            }
        } catch (Throwable $th) {
            $errors[] = $th->getMessage();
        }

        return $response->setError((bool) $errors)
            ->setData(['html' => $content, 'errors' => $errors])
            ->setMessage($errors ? Arr::first($errors) : '');
    }

    public function createTransaction(int $id, BaseHttpResponse $response)
    {
        $shipment = Shipment::query()->findOrFail($id);
        $this->check($shipment);
        $errors = [];
        $responseData = [];
        $message = trans('plugins/envia::envia.transaction.created_success');

        try {
            $transaction = $this->envia->createLabel($shipment->rate_id);

            if (Arr::get($transaction, 'status') == 'success') {
                $data = Arr::get($transaction, 'data');

                $shipment->tracking_link = $data['tracking_url'] ?? null;
                $shipment->label_url = $data['label_url'] ?? null;
                $shipment->tracking_id = $data['tracking_number'] ?? null;
                $shipment->metadata = json_encode($data);
                $shipment->status = ShippingStatusEnum::READY_TO_BE_SHIPPED_OUT;
                $shipment->save();

                ShipmentHistory::query()->create([
                    'action' => 'create_transaction',
                    'description' => trans('plugins/envia::envia.transaction.created', [
                        'tracking' => $data['tracking_number'] ?? '',
                    ]),
                    'order_id' => $shipment->order_id,
                    'user_id' => $this->userId,
                    'shipment_id' => $shipment->id,
                ]);

                ShipmentHistory::query()->create([
                    'action' => 'update_status',
                    'description' => trans('plugins/ecommerce::shipping.changed_shipping_status', [
                        'status' => ShippingStatusEnum::getLabel(ShippingStatusEnum::READY_TO_BE_SHIPPED_OUT),
                    ]),
                    'order_id' => $shipment->order_id,
                    'user_id' => $this->userId,
                    'shipment_id' => $shipment->id,
                ]);
            } else {
                $errors[] = Arr::get($transaction, 'message', 'Error al crear etiqueta');
                $message = $errors[0];
            }
        } catch (Exception $ex) {
            $errors[] = $ex->getMessage();
            $message = $ex->getMessage();
        }

        $responseData['errors'] = (array) $errors;

        return $response->setError(count($errors) > 0)
            ->setMessage($message)
            ->setData($responseData);
    }

    protected function refreshShipment(array $shipmentData, Order $order)
    {
        $params = [
            'shipment_id' => Arr::get($shipmentData, 'data.id'),
            'reference' => $order->code,
        ];

        return $this->envia->recreateShipment($params);
    }

    public function getRates(int $id, BaseHttpResponse $response)
    {
        $shipment = Shipment::query()->findOrFail($id);
        $this->check($shipment);
        $errors = [];
        $content = '';
        $order = $shipment->order;

        try {
            $shipmentData = $this->envia->getShipment($shipment->shipment_id);
            $shipmentData = $this->refreshShipment($shipmentData, $order);
            $rates = Arr::get($shipmentData, 'data.rates', []);
            $rates = $this->envia->sortRates($rates);

            $rate = Arr::first($rates, fn($value) => Arr::get($value, 'carrier_service') == $order->shipping_option);

            if ($rate) {
                $rates = Arr::where($rates, fn($value) => Arr::get($value, 'carrier_service') !== $rate['carrier_service']);
            }

            $content = view('plugins/envia::rates', compact('rates', 'shipmentData', 'shipment', 'order', 'rate'))->render();
        } catch (Throwable $th) {
            $errors[] = $th->getMessage();
        }

        return $response->setError(count($errors) > 0)
            ->setData(['html' => $content, 'errors' => $errors])
            ->setMessage($errors ? Arr::first($errors) : '');
    }

    public function updateRate(int $id, Request $request, BaseHttpResponse $response)
    {
        $shipment = Shipment::query()->findOrFail($id);
        $this->check($shipment);
        $order = $shipment->order;
        $content = '';
        $errors = [];

        try {
            $shipmentData = $this->envia->getShipment($shipment->shipment_id);
            $shipmentData = $this->refreshShipment($shipmentData, $order);
            $rates = $this->envia->sortRates(Arr::get($shipmentData, 'data.rates', []));

            $rate = Arr::first($rates, fn($value) => Arr::get($value, 'carrier_service') == $request->input('carrier_service'));

            if ($rate) {
                $shipment->rate_id = $rate['id'];
                $shipment->save();
            }

            $content = view('plugins/envia::rates', compact('rates', 'shipmentData', 'shipment', 'order', 'rate'))->render();
        } catch (Throwable $th) {
            $errors[] = $th->getMessage();
        }

        return $response->setError(count($errors) > 0)
            ->setData(['html' => $content, 'errors' => $errors])
            ->setMessage($errors ? Arr::first($errors) : '');
    }

    protected function check(Shipment $shipment)
    {
        if (! $shipment->order || ! $shipment->order->address) {
            abort(404);
        }
    }
}
