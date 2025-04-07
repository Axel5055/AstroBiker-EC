<?php

namespace Botble\Openpay\Forms;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\TextField;
use Botble\Payment\Forms\PaymentMethodForm;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;

class OpenpayPaymentMethodForm extends PaymentMethodForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->paymentId(OPENPAY_PAYMENT_METHOD_NAME)
            ->paymentName('Openpay')
            ->paymentDescription(__('Customer can buy product and pay directly using Visa, Credit card via :name', ['name' => 'Openpay']))
            ->paymentLogo(url('vendor/core/plugins/openpay/images/openpay.svg'))
            ->paymentUrl('https://www.openpay.mx/')  // Reemplaza con la URL correcta de Openpay
            ->paymentInstructions(view('plugins/openpay::instructions')->render())
            ->add(
                sprintf('payment_%s_merchant_id', OPENPAY_PAYMENT_METHOD_NAME),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Merchant ID'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('merchant_id', 'openpay'))
                    ->toArray()
            )
            ->add(
                sprintf('payment_%s_private_key', OPENPAY_PAYMENT_METHOD_NAME),
                'password',
                TextFieldOption::make()
                    ->label(__('Private Key'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('private_key', 'openpay'))
                    ->placeholder('sk_*************')
                    ->toArray()
            )
            ->add(
                sprintf('payment_%s_public_ip', OPENPAY_PAYMENT_METHOD_NAME),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Public IP'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('public_ip', 'openpay'))
                    ->placeholder('127.0.0.1')
                    ->toArray()
            )
            ->add(
                sprintf('payment_%s_production_mode', OPENPAY_PAYMENT_METHOD_NAME),
                OnOffCheckboxField::class,
                CheckboxFieldOption::make()
                    ->label(trans('plugins/payment::payment.live_mode'))
                    ->value(get_payment_setting('production_mode', OPENPAY_PAYMENT_METHOD_NAME, true))
                    ->toArray(),
            );
    }
}
