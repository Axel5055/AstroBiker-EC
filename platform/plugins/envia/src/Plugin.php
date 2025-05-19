<?php

namespace Botble\Envia;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Facades\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Setting::delete([
            'shipping_envia_status',
            'shipping_envia_api_key',
            'shipping_envia_sandbox',
            'shipping_envia_logging',
            'shipping_envia_cache_response',
            'shipping_envia_webhooks',
        ]);
    }
}
