@php
    $status = setting('shipping_envia_status', 0);
    $apiKey = setting('shipping_envia_api_key') ?: '';
    $test = setting('shipping_envia_sandbox', 1) ?: 0;
    $logging = setting('shipping_envia_logging', 1) ?: 0;
    $cacheResponse = setting('shipping_envia_cache_response', 1) ?: 0;
@endphp

<x-core::card>
    <x-core::table :striped="false" :hover="false">
        <x-core::table.body>
            <x-core::table.body.cell class="border-end" style="width: 5%">
                <x-core::icon name="ti ti-truck-delivery" />
            </x-core::table.body.cell>
            <x-core::table.body.cell style="width: 20%">
                <img class="filter-black" src="{{ url('vendor/core/plugins/envia/images/logo-dark.svg') }}"
                    alt="Envia.com">
            </x-core::table.body.cell>
            <x-core::table.body.cell>
                <a href="https://www.envia.com/" target="_blank" class="fw-semibold">Envia.com</a>
                <p class="mb-0">Servicio de logística para generar envíos con múltiples paqueterías.</p>
            </x-core::table.body.cell>

            <x-core::table.body.row class="bg-white">
                <x-core::table.body.cell colspan="3">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div @class(['payment-name-label-group', 'd-none' => !$status])>
                                <span class="payment-note v-a-t">{{ trans('plugins/payment::payment.use') }}:</span>
                                <label class="ws-nm inline-display method-name-label">Envia.com</label>
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
                                    <x-slot:title>Nota importante</x-slot:title>

                                    <ul class="ps-3">
                                        <li style="list-style-type: circle;">
                                            <span>Configura correctamente tu cuenta en <a href="https://www.envia.com/"
                                                    target="_blank">Envia.com</a>.</span>
                                        </li>
                                        <li style="list-style-type: circle;">
                                            <span>Asegúrate de ingresar una dirección de origen válida en los ajustes de
                                                envío.</span>
                                        </li>
                                        <li style="list-style-type: circle;">
                                            <span>Consulta la <a href="https://enviaya.com.mx/docs/api"
                                                    target="_blank">documentación oficial</a> para más detalles
                                                técnicos.</span>
                                        </li>
                                    </ul>
                                </x-core::alert>

                                <x-core::form.label>
                                    Instrucciones para configurar Envia.com
                                </x-core::form.label>

                                <div>
                                    <p>Paso a paso:</p>

                                    <ol>
                                        <li>
                                            <p>
                                                <a href="https://enviaya.com.mx/users/sign_up" target="_blank">
                                                    Regístrate en Envia.com
                                                </a>
                                            </p>
                                        </li>
                                        <li>
                                            <p>Desde tu panel, ve al área de desarrolladores y copia tu clave API.</p>
                                        </li>
                                        <li>
                                            <p>Pega esa clave en el siguiente campo.</p>
                                        </li>
                                    </ol>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <p class="text-muted">
                                    Proporciona tu clave API de
                                    <a href="https://enviaya.com.mx" target="_blank">Envia.com</a>:
                                </p>

                                <x-core::form.text-input name="shipping_envia_api_key" label="Clave API"
                                    placeholder="ENVIA-API-KEY" :disabled="BaseHelper::hasDemoModeEnabled()" :value="BaseHelper::hasDemoModeEnabled() ? Str::mask($apiKey, '*', 10) : $apiKey" />

                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_sandbox" :checked="$test"
                                        label="Modo sandbox (pruebas)" />
                                </x-core::form-group>

                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_status" :checked="$status"
                                        label="Activar Envia.com" />
                                </x-core::form-group>

                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_logging" :checked="$logging"
                                        label="Habilitar logs" />
                                </x-core::form-group>

                                <x-core::form-group>
                                    <x-core::form.toggle name="shipping_envia_cache_response" :checked="$cacheResponse"
                                        label="Cachear respuestas" />
                                </x-core::form-group>

                                <x-core::alert type="warning">
                                    Este método de envío no está disponible con pagos contra entrega (COD).
                                </x-core::alert>

                                @env('demo')
                                <x-core::alert type="danger">
                                    Este método está deshabilitado en modo demostración.
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
