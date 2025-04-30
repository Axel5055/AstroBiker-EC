<?php

namespace Botble\Envia\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Services\HandleShippingFeeService;
use Botble\Setting\Supports\SettingStore;
use Botble\Envia\Envia;
use Botble\Support\Services\Cache\Cache;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use Exception;

class EnviaSettingController extends BaseController
{
    public function update(Request $request, BaseHttpResponse $response, SettingStore $settingStore)
    {
        // Filtramos solo las configuraciones relacionadas con Envía
        $data = Arr::where($request->except(['_token']), function ($value, $key) {
            return Str::startsWith($key, 'shipping_');
        });

        foreach ($data as $settingKey => $settingValue) {
            $settingStore->set($settingKey, $settingValue);
        }

        $settingStore->save();

        Cache::make(HandleShippingFeeService::class)->flush();

        $message = trans('plugins/envia::envia.saved_shipping_settings_success');
        $isError = false;

        // Validar conexión si se activa la opción
        if ($request->input('shipping_envia_validate')) {
            try {
                $errors = app(Envia::class)->validate();
                if ($errors) {
                    $message = $errors[0];
                    $isError = true;
                }
            } catch (Exception $e) {
                $message = $e->getMessage();
                $isError = true;
            }
        }

        return $response->setError($isError)->setMessage($message);
    }
}
