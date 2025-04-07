<?php

namespace Botble\Openpay\Providers;

use Botble\Base\Facades\Html;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Facades\PaymentMethods;
use Botble\Openpay\Forms\OpenpayPaymentMethodForm;
use Botble\Openpay\Services\Gateways\OpenpayPaymentService;
use Illuminate\Http\Request;
use Illuminate\Support\ServiceProvider;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        add_filter(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, [$this, 'registerOpenpayMethod'], 2, 2);

        $this->app->booted(function () {
            add_filter(PAYMENT_FILTER_AFTER_POST_CHECKOUT, [$this, 'checkoutWithOpenpay'], 2, 2);
        });

        add_filter(PAYMENT_METHODS_SETTINGS_PAGE, [$this, 'addPaymentSettings'], 2);

        add_filter(BASE_FILTER_ENUM_ARRAY, function ($values, $class) {
            if ($class == PaymentMethodEnum::class) {
                $values['OPENPAY'] = OPENPAY_PAYMENT_METHOD_NAME;
            }

            return $values;
        }, 2, 2);

        add_filter(BASE_FILTER_ENUM_LABEL, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == OPENPAY_PAYMENT_METHOD_NAME) {
                $value = 'Openpay';
            }

            return $value;
        }, 2, 2);

        add_filter(BASE_FILTER_ENUM_HTML, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == OPENPAY_PAYMENT_METHOD_NAME) {
                $value = Html::tag(
                    'span',
                    PaymentMethodEnum::getLabel($value),
                    ['class' => 'label-success status-label']
                )
                    ->toHtml();
            }

            return $value;
        }, 2, 2);

        add_filter(PAYMENT_FILTER_GET_SERVICE_CLASS, function ($data, $value) {
            if ($value == OPENPAY_PAYMENT_METHOD_NAME) {
                $data = OpenpayPaymentService::class;
            }

            return $data;
        }, 2, 2);

        add_filter(PAYMENT_FILTER_PAYMENT_INFO_DETAIL, function ($data, $payment) {
            if ($payment->payment_channel == OPENPAY_PAYMENT_METHOD_NAME) {
                $paymentDetail = (new OpenpayPaymentService())->getPaymentDetails($payment->charge_id);
                $data = view('plugins/openpay::detail', ['payment' => $paymentDetail])->render();
            }

            return $data;
        }, 2, 2);
    }

    public function addPaymentSettings(?string $settings): string
    {
        return $settings . OpenpayPaymentMethodForm::create()->renderForm();
    }

    public function registerOpenpayMethod(?string $html, array $data): string
    {
        PaymentMethods::method(OPENPAY_PAYMENT_METHOD_NAME, [
            'html' => view('plugins/openpay::methods', $data)->render(),
        ]);

        return $html;
    }

    public function checkoutWithOpenpay(array $data, Request $request): array
    {
        if ($data['type'] !== OPENPAY_PAYMENT_METHOD_NAME) {
            return $data;
        }

        $currentCurrency = get_application_currency();

        $currencyModel = $currentCurrency->replicate();

        $openPayService = $this->app->make(OpenpayPaymentService::class);

        $supportedCurrencies = $openPayService->supportedCurrencyCodes();

        $currency = strtoupper($currentCurrency->title);

        $notSupportCurrency = false;

        if (!in_array($currency, $supportedCurrencies)) {
            $notSupportCurrency = true;

            if (!$currencyModel->query()->where('title', 'USD')->exists()) {
                $data['error'] = true;
                $data['message'] = __(
                    ":name doesn't support :currency. List of currencies supported by :name: :currencies.",
                    [
                        'name' => 'Openpay',
                        'currency' => $currency,
                        'currencies' => implode(', ', $supportedCurrencies),
                    ]
                );

                return $data;
            }
        }

        $paymentData = apply_filters(PAYMENT_FILTER_PAYMENT_DATA, [], $request);

        if ($notSupportCurrency) {
            $usdCurrency = $currencyModel->query()->where('title', 'USD')->first();

            $paymentData['currency'] = 'USD';
            if ($currentCurrency->is_default) {
                $paymentData['amount'] = $paymentData['amount'] * $usdCurrency->exchange_rate;
            } else {
                $paymentData['amount'] = format_price(
                    $paymentData['amount'] / $currentCurrency->exchange_rate,
                    $currentCurrency,
                    true
                );
            }
        }

        if (!$request->input('callback_url')) {
            $paymentData['callback_url'] = route('payments.openpay.status');
        }

        $checkoutUrl = $openPayService->execute($paymentData);

        if ($checkoutUrl) {
            $data['checkoutUrl'] = $checkoutUrl;
        } else {
            $data['error'] = true;
            $data['message'] = $openPayService->getErrorMessage();
        }

        return $data;
    }
}
