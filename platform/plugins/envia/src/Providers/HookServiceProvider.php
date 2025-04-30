<?php

namespace Botble\Envia\Providers;

use Botble\Base\Facades\Assets;
use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Enums\ShippingMethodEnum;
use Botble\Ecommerce\Models\Shipment;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Envia\Envia; // Cambiado a Envia
use Illuminate\Support\Arr;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Str;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        // Filtra la lógica de tarifas de envío
        add_filter('handle_shipping_fee', [$this, 'handleShippingFee'], 11, 2);

        // Añade configuración al panel de métodos de envío
        add_filter(SHIPPING_METHODS_SETTINGS_PAGE, [$this, 'addSettings'], 2);

        // Registra el método "Envia" en los métodos de envío (ENUM)
        add_filter(BASE_FILTER_ENUM_ARRAY, function ($values, $class) {
            if ($class == ShippingMethodEnum::class) {
                $values['ENVIA'] = ENVIA_SHIPPING_METHOD_NAME;
            }

            return $values;
        }, 2, 2);

        // Asigna nombre visible al método "ENVIA"
        add_filter(BASE_FILTER_ENUM_LABEL, function ($value, $class) {
            if ($class == ShippingMethodEnum::class && $value == ENVIA_SHIPPING_METHOD_NAME) {
                return 'Envia';
            }

            return $value;
        }, 2, 2);

        // Personaliza botones en la vista de detalle de envío
        add_filter('shipment_buttons_detail_order', function (?string $content, Shipment $shipment) {
            Assets::addScriptsDirectly('vendor/core/plugins/envia/js/envia.js');

            return $content . view('plugins/envia::buttons', compact('shipment'))->render();
        }, 1, 2);
    }

    /**
     * Calcula tarifas de envío usando Envía API
     *
     * @param array $result
     * @param array $data
     * @return array
     */
    public function handleShippingFee(array $result, array $data): array
    {
        if (! $this->app->runningInConsole() && setting('shipping_envia_status') == 1) {
            Arr::forget($data, 'extra.COD');

            // Usamos nuestro servicio Envia para obtener tarifas
            $results = app(Envia::class)->getRates($data);

            // Si es pago contraentrega (COD), desactivamos las opciones
            if (Arr::get($data, 'payment_method') == PaymentMethodEnum::COD) {
                $rates = Arr::get($results, 'rates') ?: [];
                foreach ($rates as &$rate) {
                    $rate['disabled'] = true;
                    $rate['error_message'] = __('Not available in COD payment option.');
                }

                Arr::set($results, 'rates', $rates);
            }

            $result['envia'] = Arr::get($results, 'rates') ?: [];
        }

        return $result;
    }

    /**
     * Añade sección de configuración de Envía
     *
     * @param string|null $settings
     * @return string
     */
    public function addSettings(?string $settings): string
    {
        $logFiles = [];

        // Cargamos logs si está activado
        if (setting('shipping_envia_logging')) {
            foreach (BaseHelper::scanFolder(storage_path('logs')) as $file) {
                if (Str::startsWith($file, 'envia-')) {
                    $logFiles[] = $file;
                }
            }
        }

        return $settings . view('plugins/envia::settings', compact('logFiles'))->render();
    }
}
