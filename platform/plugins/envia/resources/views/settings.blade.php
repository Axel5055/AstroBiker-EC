@php
    $status = setting('shipping_envia_status', 0);
    $apiKey = setting('shipping_envia_api_key') ?: '';
    $logging = setting('shipping_envia_logging', 1) ?: 0;
@endphp
<x-core::card>
    <x-core::table :striped="false" :hover="false">
        <x-core::table.body>
            <x-core::table.body.cell class="border-end" style="width: 5%">
                <x-core::icon name="ti ti-truck-delivery" />
            </x-core::table.body.cell>
            <x-core::table.body.cell style="width: 20%">
                <img class="filter-black" src="{{ url('vendor/core/plugins/envia/images/logo-dark.svg') }}" alt="Envía">
            </x-core::table.body.cell>
            <x-core::table.body.cell>
                <a href="https://www.envia.com/" target="_blank" class="fw-semibold">Envía</a>
                <p class="mb-0">{{ trans('plugins/envia::envia.description') }}</p>
            </x-core::table.body.cell>
            <x-core::table.body.row class="bg-white">
                <x-core::table.body.cell colspan="3">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div @class(['payment-name-label-group', 'd-none' => !$status])>
                                <span class="payment-note v-a-t">{{ trans('plugins/payment::payment.use') }}:</span>
                                <label class="ws-nm inline-display method-name-label">Envía</label>
                            </div>
                        </div>
                        <x-core::button data-bs-toggle="collapse" href="#collapse-shipping-method-envia"
                            aria-expanded="false" aria-controls="collapse-shipping-method-envia">
                            @if ($status)
                                {{ trans('core/base::layouts.settings') }}
                            @else
                                {{ trans('core/base::forms.edit') }}
                            @endif
                        </x-core::button>
                    </div>
                </x-core::table.body.cell>
            </x-core::table.body.row>
            <x-core::table.body.row class="collapse" id="collapse-shipping-method-envia">
                <x-core::table.body.cell class="border-left" colspan="3">
                    <x-core::form :url="route('ecommerce.shipments.envia.settings.update')">
                        <div class="row">
                            <div class="col-sm-6">
                                <x-core::alert type="warning">
                                    <x-slot:title>
                                        {{ trans('plugins/envia::envia.note_0') }}
                                    </x-slot:title>
                                    <ul class="ps-3">
                                        <li style="list-style-type: circle;">
                                            <span>{!! BaseHelper::clean(
                                                trans('plugins/envia::envia.note_1', ['link' => 'https://docs.botble.com/farmart/1.x/usage-location']),
                                            ) !!}</span>
                                        </li>
                                        <li style="list-style-type: circle;">
                                            <span>{{ trans('plugins/envia::envia.note_2') }}</span>
                                        </li>
                                        <li style="list-style-type: circle;">
                                            <span>{!! BaseHelper::clean(trans('plugins/envia::envia.note_3', ['link' => route('ecommerce.settings.shipping')])) !!}</span>
                                        </li>
                                        <li style="list-style-type: circle;">
                                            <span>{!! BaseHelper::clean(trans('plugins/envia::envia.note_4', ['link' => 'https://developers.envia.com/'])) !!}</span>
                                        </li>
                                        @if (is_plugin_active('marketplace'))
                                            <li style="list-style-type: circle;">
                                                <span>{{ trans('plugins/envia::envia.note_5') }}</span>
                                            </li>
                                        @endif
                                    </ul>
                                </x-core::alert>
                                <x-core::form.label>
                                    {{ trans('plugins/envia::envia.configuration_instruction', ['name' => 'Envía']) }}
                                </x-core::form.label>
                                <div>
                                    <p>{{ trans('plugins/envia::envia.configuration_requirement', ['name' => 'Envía']) }}:
                                    </p>
                                    <ol>
                                        <li>
                                            <p>
                                                <a href="https://www.envia.com/register/" target="_blank">
                                                    {{ trans('plugins/envia::envia.service_registration', ['name' => 'Envía']) }}
                                                </a>
                                            </p>
                                        </li>
                                        <li>
                                            <p>{{ trans('plugins/envia::envia.after_service_registration_msg', ['name' => 'Envía']) }}
                                            </p>
                                        </li>
                                        <li>
                                            <p>{{ trans('plugins/envia::envia.enter_api_key') }}</p>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <p class="text-muted">
                                    {{ trans('plugins/envia::envia.please_provide_information') }}
                                    <a href="https://www.envia.com/" target="_blank">Envía</a>:
                                </p>
                                <x-core::form.text-input name="shipping_envia_api_key" :label="trans('plugins/envia::envia.api_token')"
                                    placeholder="<API-KEY>" :disabled="BaseHelper::hasDemoModeEnabled()" :value="BaseHelper::hasDemoModeEnabled() ? Str::mask($apiKey, '*', 10) : $apiKey" />
                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_status" :checked="$status"
                                        :label="trans('plugins/envia::envia.activate')" />
                                </x-core::form-group>
                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_logging" :checked="$logging"
                                        :label="trans('plugins/envia::envia.logging')" />
                                    <x-core::form.helper-text>
                                        {{ trans('plugins/envia::envia.enable_logging_desc') }}
                                    </x-core::form.helper-text>
                                </x-core::form-group>
                                @if (!empty($logFiles))
                                    <div class="form-group mb-3">
                                        <p class="mb-0">{{ __('Log files') }}: </p>
                                        <ul class="list-unstyled">
                                            @foreach ($logFiles as $logFile)
                                                <li><a href="{{ route('ecommerce.shipments.envia.view-log', $logFile) }}"
                                                        target="_blank"><strong>- {{ $logFile }} <i
                                                                class="fa fa-external-link"></i></strong></a></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <x-core::alert type="warning">
                                    {{ trans('plugins/envia::envia.not_available_in_cod_payment_method') }}
                                </x-core::alert>
                                @env('demo')
                                <x-core::alert type="danger">
                                    {{ trans('plugins/envia::envia.disabled_in_demo_mode') }}
                                </x-core::alert>
                            @else
                                <div class="text-end">
                                    <x-core::button type="submit" color="primary">
                                        {{ trans('core/base::forms.update') }}
                                    </x-core::button>
                                </div>
                                @endenv
                            </div>
                        </div>
                    </x-core::form>
                </x-core::table.body.cell>
            </x-core::table.body.row>
        </x-core::table.body>
    </x-core::table>
</x-core::card>
