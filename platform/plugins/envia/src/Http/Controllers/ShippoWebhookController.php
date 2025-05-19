<?php

namespace Botble\Envia\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Enums\ShippingStatusEnum;
use Botble\Ecommerce\Facades\OrderHelper;
use Botble\Ecommerce\Models\Shipment;
use Botble\Ecommerce\Models\ShipmentHistory;
use Botble\Envia\Envia;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class EnviaWebhookController extends BaseController
{
    public function __construct(protected Envia $envia) {}

    public function index(Request $request, BaseHttpResponse $response)
    {
        $event = $request->input('event');
        $data = (array) $request->input('data', []);

        $trackingId = null;

        switch ($event) {
            case 'transaction_updated':
                $trackingId = Arr::get($data, 'object_id');
                break;

            case 'track_updated':
                $trackingId = Arr::get($data, 'tracking_status.object_id');
                break;

            default:
                $this->logWebhook(['event' => $event, 'data' => $data], __LINE__);
                break;
        }

        if (! $trackingId) {
            return $response;
        }

        $shipment = Shipment::query()->where('tracking_id', $trackingId)->first();

        if (! $shipment) {
            $this->logWebhook(['tracking_id' => $trackingId, 'message' => 'Shipment not found'], __LINE__);
            return $response;
        }

        match ($event) {
            'transaction_updated' => $this->transactionUpdated($shipment, $data),
            'track_updated'       => $this->trackUpdated($shipment, $data),
        };

        return $response;
    }

    protected function transactionUpdated(Shipment $shipment, array $data)
    {
        $status = Arr::get($data, 'status');

        if ($status === 'REFUNDED') {
            $shipment->status = ShippingStatusEnum::CANCELED;
            $shipment->save();
        }

        ShipmentHistory::query()->create([
            'action' => 'transaction_updated',
            'description' => trans('plugins/envia::envia.transaction.updated', [
                'tracking' => Arr::get($data, 'tracking_number'),
            ]),
            'order_id' => $shipment->order_id,
            'user_id' => 0,
            'shipment_id' => $shipment->id,
        ]);
    }

    protected function trackUpdated(Shipment $shipment, array $data)
    {
        $status = Arr::get($data, 'tracking_status.status');

        switch ($status) {
            case 'PRE_TRANSIT':
                break;

            case 'TRANSIT':
                $shipment->status = ShippingStatusEnum::DELIVERING;
                $shipment->save();
                break;

            case 'DELIVERED':
                $shipment->status = ShippingStatusEnum::DELIVERED;
                $shipment->date_shipped = Carbon::now();
                $shipment->save();

                OrderHelper::shippingStatusDelivered($shipment, request());
                break;

            case 'RETURNED':
                $shipment->status = ShippingStatusEnum::CANCELED;
                $shipment->save();
                break;
        }

        ShipmentHistory::query()->create([
            'action' => 'track_updated',
            'description' => trans('plugins/envia::envia.tracking.statuses.' . Str::lower($status)),
            'order_id' => $shipment->order_id,
            'user_id' => 0,
            'shipment_id' => $shipment->id,
        ]);
    }

    protected function logWebhook(array $data, int $line): void
    {
        if (setting('shipping_envia_logging')) {
            Log::channel('daily')->info('ENVIA WEBHOOK LOG [' . $line . ']', $data);
        }
    }
}
