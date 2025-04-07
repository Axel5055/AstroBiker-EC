@if (setting('payment_openpay_status') == 1)
    <x-plugins-payment::payment-method :name="OPENPAY_PAYMENT_METHOD_NAME" paymentName="Openpay" :supportedCurrencies="(new Botble\Openpay\Services\Gateways\OpenpayPaymentService())->supportedCurrencyCodes()">
        <x-slot name="currencyNotSupportedMessage">
            <p class="mt-1 mb-0">
                {{ __('Learn more') }}:
                {{ Html::link('https://ayuda.openpay.mx/ayuda/que-tipo-de-monedas-se-pueden-utilizar/', attributes: ['target' => '_blank', 'rel' => 'nofollow']) }}.
            </p>
        </x-slot>
    </x-plugins-payment::payment-method>
@endif
