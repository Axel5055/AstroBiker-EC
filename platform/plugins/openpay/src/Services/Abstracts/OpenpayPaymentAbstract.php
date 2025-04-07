<?php

namespace Botble\Openpay\Services\Abstracts;

use Botble\Ecommerce\Models\Order;
use Botble\Payment\Services\Traits\PaymentErrorTrait;
use Exception;
use Illuminate\Support\Arr;
use Openpay\Data\Openpay;

abstract class OpenpayPaymentAbstract
{
    use PaymentErrorTrait;

    protected array $itemList;

    protected string $paymentCurrency;

    protected float $totalAmount;

    protected string $returnUrl;

    protected string $cancelUrl;

    protected string $transactionDescription;

    protected array $customer;

    protected bool $supportRefundOnline;

    public function __construct()
    {
        $this->paymentCurrency = config('plugins.payment.payment.currency');

        $this->totalAmount = 0;

        $this->setClient();

        $this->supportRefundOnline = true;
    }

    public function getSupportRefundOnline(): bool
    {
        return $this->supportRefundOnline;
    }

    public function setClient()
    {

        $merchant_id = setting('payment_openpay_merchant_id', 'openpay');
        $private_key = setting('payment_openpay_private_key', 'openpay');
        $public_ip = setting('payment_openpay_public_ip', 'openpay');
        $production_mode = setting('payment_openpay_production_mode');

        if ($production_mode) {
            Openpay::setProductionMode(true);
            return Openpay::getInstance($merchant_id, $private_key, 'MX', $public_ip);
        }
        Openpay::setProductionMode(false);
        return Openpay::getInstance($merchant_id, $private_key, 'MX', $public_ip);
    }

    public function setCurrency(string $currency): self
    {
        $this->paymentCurrency = $currency;

        return $this;
    }

    public function getCurrency(): string
    {
        return $this->paymentCurrency;
    }

    public function getCustomer(): array
    {
        return $this->customer;
    }

    public function setCustomer(array $customer)
    {
        $this->customer = $customer;

        return $this;
    }


    public function setItem(array $itemData): self
    {
        if (count($itemData) === count($itemData, COUNT_RECURSIVE)) {
            $itemData = [$itemData];
        }

        foreach ($itemData as $data) {
            $amount = $data['price'] * $data['quantity'];

            $item = [
                'name' => $data['name'],
                'sku' => $data['sku'],
                'unit_amount' => [
                    'currency_code' => $this->paymentCurrency,
                    'value' => $amount,
                ],
                'quantity' => $data['quantity'],
            ];

            if ($description = Arr::get($data, 'description')) {
                $item['description'] = $description;
            }

            if ($tax = Arr::get($data, 'tax')) {
                $item['tax'] = [
                    'currency_code' => $this->paymentCurrency,
                    'value' => $tax,
                ];
            }

            if ($category = Arr::get($data, 'category')) {
                $item['category'] = $category;
            }

            $this->itemList[] = $item;
            $this->totalAmount += $amount;
        }

        $this->totalAmount = round((float) $this->totalAmount, $this->isSupportedDecimals() ? 2 : 0);

        return $this;
    }

    public function setReturnUrl(string $url): self
    {
        $this->returnUrl = $url;

        return $this;
    }

    public function setCancelUrl(string $url): self
    {
        $this->cancelUrl = $url;

        return $this;
    }

    protected function buildRequestBody(): array
    {

        $chargeRequest = [
            "method" => "card",
            'amount' => (string) $this->totalAmount,
            'currency' => $this->paymentCurrency,
            'description' => $this->transactionDescription,
            'customer' => $this->customer,
            'send_email' => false,
            'confirm' => false,
            "use_3d_secure" => true,
            'redirect_url' => $this->returnUrl,
        ];

        if ((string) $this->totalAmount >= 2000 && (string) $this->totalAmount < 4000) {
            $chargeRequest['payment_plan'] = array('payments' => 3);
        } elseif ((string) $this->totalAmount >= 4000) {
            $chargeRequest['payment_plan'] = array('payments' => 6);
        }

        return $chargeRequest;
    }

    public function createPayment(string $transactionDescription, $orderId): string|null|bool
    {
        $this->transactionDescription = $transactionDescription;

        $openpay = $this->setClient();
        $payment = $this->buildRequestBody($orderId);
        $checkoutUrl = '';
        $paymentId = null;

        try {
            do_action('payment_before_making_api_request', OPENPAY_PAYMENT_METHOD_NAME, $payment);

            $charge = $openpay->charges->create($payment);

            do_action('payment_after_api_response', OPENPAY_PAYMENT_METHOD_NAME, (array) $payment, (array) $charge);

            $paymentId = $charge->id;

            $checkoutUrl = $charge->payment_method->url;
        } catch (Exception $exception) {
            $this->setErrorMessageAndLogging($exception, 1);
            return false;
        }

        if ($checkoutUrl && $paymentId) {
            session(['openpay_payment_id' => $paymentId]);

            Order::query()
                ->where('id', $orderId)
                ->update(['charge_id' => $paymentId]);


            return $checkoutUrl;
        }

        session()->forget('openpay_payment_id');

        return null;
    }


    public function getPaymentStatus()
    {
        // Verificar si el identificador del cargo está presente
        $chargeId = session('openpay_payment_id');

        if (empty($chargeId)) {
            return false; // No se puede continuar sin el ID del cargo
        }

        try {
            // Obtener la instancia del cliente de Openpay
            $openpay = $this->setClient();

            // Consultar el cargo en Openpay usando su ID
            $charge = $openpay->charges->get($chargeId);

            // Opcional: Ejecutar acción antes de procesar la respuesta
            do_action('payment_before_making_api_request', OPENPAY_PAYMENT_METHOD_NAME, ['charge_id' => $chargeId]);

            // Verificar si el cargo fue completado
            if ($charge && $charge->status == 'completed') {

                // Acción después de la respuesta
                do_action('payment_after_api_response', OPENPAY_PAYMENT_METHOD_NAME, ['charge' => (array) $charge]);

                // Devolver el estado del cargo (completado)
                return $charge->status;
            }
        } catch (\Exception $exception) {
            // Manejo de errores y registro del problema
            $this->setErrorMessageAndLogging($exception, 1);
        }

        // Si no fue exitoso, devolver false
        return false;
    }



    public function getPaymentDetails(String $paymentId): bool
    {
        $paymentId = null;
        try {
            // Crear un objeto de la clase Openpay
            $openpay = $this->setClient();

            // Obtener los detalles del pago utilizando el ID del pago
            $charge = $openpay->charges->get($paymentId);
        } catch (Exception $exception) {
            $this->setErrorMessageAndLogging($exception, 1);
            return false;
        }

        // Devolver la respuesta
        return $charge;
    }

    public function refundOrder(string $paymentId, float|int|string $totalAmount): array
    {
        try {
            // Obtener los detalles del pago
            $openpay = $this->setClient();

            // Obtener los detalles del pago utilizando el ID del pago
            $detail = $openpay->charges->get($paymentId);
            $chargeId = null;

            if ($detail) {
                // Obtener el ID del cargo
                $chargeId = $detail->id;
            }

            if ($chargeId) {
                // Crear una solicitud de reembolso utilizando el ID del cargo
                $refundData = [
                    'amount' => $totalAmount, // Cantidad a reembolsar
                    'description' => 'Reembolso del pedido', // Descripción del reembolso
                ];

                // Realizar el reembolso
                $refund = $this->setClient();
                $refund->charges->refund($chargeId, $refundData);

                if ($refund->status == 'completed') {
                    // Si el reembolso se completa exitosamente
                    return [
                        'error' => false,
                        'status' => $refund->status,
                        'data' => (array) $refund,
                    ];
                } else {
                    // Si el reembolso no se completa
                    return [
                        'error' => true,
                        'message' => 'El reembolso no se pudo completar',
                    ];
                }
            } else {
                // Si no se encuentra el ID del cargo
                return [
                    'error' => true,
                    'message' => 'No se pudo encontrar el ID del cargo',
                ];
            }
        } catch (Exception $exception) {
            $this->setErrorMessageAndLogging($exception, 1);

            return [
                'error' => true,
                'message' => $exception->getMessage(),
            ];
        }
    }


    public function execute(array $data)
    {
        try {
            return $this->makePayment($data);
        } catch (Exception $exception) {
            $this->setErrorMessageAndLogging($exception, 1);

            return false;
        }
    }

    public function isSupportedDecimals(): bool
    {
        return !in_array($this->getCurrency(), [
            'BIF',
            'CLP',
            'DJF',
            'GNF',
            'JPY',
            'KMF',
            'KRW',
            'MGA',
            'PYG',
            'RWF',
            'VND',
            'VUV',
            'XAF',
            'XOF',
            'XPF',
        ]);
    }

    /**
     * List currencies supported https://ayuda.openpay.mx/ayuda/que-tipo-de-monedas-se-pueden-utilizar/
     */
    public function supportedCurrencyCodes(): array
    {
        return [

            'MXN',
            'USD',
        ];
    }

    abstract public function makePayment(array $data);

    abstract public function afterMakePayment(array $data);
}
