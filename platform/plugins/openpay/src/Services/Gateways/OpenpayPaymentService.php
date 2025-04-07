<?php

namespace Botble\Openpay\Services\Gateways;

use Botble\Ecommerce\Models\Customer;
use Botble\Openpay\Services\Abstracts\OpenpayPaymentAbstract;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Supports\PaymentHelper;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class OpenpayPaymentService extends OpenpayPaymentAbstract
{
    public function makePayment(array $data)
    {
        $amount = round((float) $data['amount'], $this->isSupportedDecimals() ? 2 : 0);
        $customer = Customer::query()->with(['addresses'])->find($data['customer_id']);
        $customerData = [
            'name' => $customer->name,
            'last_name' => null,
            'email' => $customer->email,
            'phone_number' => $customer->phone,
        ];

        $currency = $data['currency'];
        $currency = strtoupper($currency);

        $queryParams = [
            'type' => OPENPAY_PAYMENT_METHOD_NAME,
            'amount' => $amount,
            'currency' => $currency,
            'order_id' => $data['order_id'],
            'customer_id' => Arr::get($data, 'customer_id'),
            'customer_type' => Arr::get($data, 'customer_type'),
        ];

        if ($cancelUrl = $data['return_url'] ?: PaymentHelper::getCancelURL()) {
            $this->setCancelUrl($cancelUrl);
        }

        $description = Str::limit($data['description'], 50);
        $order = $data['order_id'];

        return $this
            ->setReturnUrl($data['callback_url'] . '?' . http_build_query($queryParams))
            ->setCurrency($currency)
            ->setCustomer($customerData ?: '')
            ->setItem([
                'name' => $description,
                'quantity' => 1,
                'price' => $amount,
                'sku' => null,
                'type' => OPENPAY_PAYMENT_METHOD_NAME,
            ])
            ->createPayment($description, $order);
    }

    public function afterMakePayment(array $data): ?string
    {
        $status = PaymentStatusEnum::COMPLETED;

        $chargeId = session('openpay_payment_id');

        $orderIds = (array) Arr::get($data, 'order_id', []);

        do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
            'amount' => $data['amount'],
            'currency' => $data['currency'],
            'charge_id' => $chargeId,
            'order_id' => $orderIds,
            'customer_id' => Arr::get($data, 'customer_id'),
            'customer_type' => Arr::get($data, 'customer_type'),
            'payment_channel' => OPENPAY_PAYMENT_METHOD_NAME,
            'status' => $status,
        ]);

        session()->forget('openpay_payment_id');

        return $chargeId;
    }
}
