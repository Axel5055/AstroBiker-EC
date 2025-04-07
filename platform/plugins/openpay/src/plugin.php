<?php

namespace Botble\Openpay;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Facades\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Setting::delete([
            'payment_openpay_name',
            'payment_openpay_description',
            'payment_openpay_merchant_id',
            'payment_openpay_private_key',
            'payment_openpay_public_ip',
            'payment_openpay_production_mode',
            'payment_openpay_status',
        ]);
    }
}
