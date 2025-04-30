<?php

return [
    'package_types' => [
        'envelope' => 'Sobre',
        'box' => 'Caja',
        'pak' => 'Paquete',
        'tube' => 'Tubo',
        'padded_pak' => 'Paquete acolchado',
        'document' => 'Documento',
        'small_box' => 'Caja pequeña',
        'medium_box' => 'Caja mediana',
        'large_box' => 'Caja grande',
        'extra_large_box' => 'Caja extra grande',
        'flat_rate_box' => 'Caja tarifa plana',
        'irregular' => 'Irregular',
        'pallet' => 'Paleta',
        'soft_pack' => 'Soft Pack',
        'parcel' => 'Paquete',
    ],
    'service_levels' => [
        // DHL
        'dhl_express_worldwide' => 'DHL Express Worldwide',
        'dhl_express_economy' => 'DHL Economy Select',
        'dhl_express_9_00' => 'DHL Express 9:00',
        'dhl_express_10_30' => 'DHL Express 10:30',
        'dhl_express_12_00' => 'DHL Express 12:00',
        'dhl_express_medical' => 'DHL Medical Express',

        // FedEx
        'fedex_ground' => 'FedEx Ground®',
        'fedex_home_delivery' => 'FedEx Home Delivery®',
        'fedex_smart_post' => 'FedEx SmartPost®',
        'fedex_2_day' => 'FedEx 2Day®',
        'fedex_2_day_am' => 'FedEx 2Day® A.M.',
        'fedex_express_saver' => 'FedEx Express Saver®',
        'fedex_standard_overnight' => 'FedEx Standard Overnight®',
        'fedex_priority_overnight' => 'FedEx Priority Overnight®',
        'fedex_first_overnight' => 'FedEx First Overnight®',
        'fedex_international_economy' => 'FedEx International Economy®',
        'fedex_international_priority' => 'FedEx International Priority®',

        // UPS
        'ups_ground' => 'UPS Ground',
        'ups_saver' => 'UPS Saver®',
        'ups_3_day_select' => 'UPS 3 Day Select®',
        'ups_second_day_air' => 'UPS 2nd Day Air®',
        'ups_next_day_air' => 'UPS Next Day Air®',
        'ups_next_day_air_saver' => 'UPS Next Day Air Saver®',

        // Estafeta
        'estafeta_terminales' => 'Estafeta Terminales',
        'estafeta_envio_express' => 'Estafeta Envío Express',
        'estafeta_envio_interurbano' => 'Estafeta Envío Interurbano',
        'estafeta_envio_nacional' => 'Estafeta Envío Nacional',
        'estafeta_envio_metropolitano' => 'Estafeta Envío Metropolitano',
        'estafeta_envio_urgente' => 'Estafeta Envío Urgente',
        'estafeta_paquete_estandar' => 'Estafeta Paquete Estándar',
        'estafeta_paquete_economico' => 'Estafeta Paquete Económico',

        // Paquetería 4-72
        'paqueteriame_472_nacional' => 'Paquetería 4-72 Nacional',
        'paqueteriame_472_local' => 'Paquetería 4-72 Local',
        'paqueteriame_472_metropolitano' => 'Paquetería 4-72 Metropolitano',
        'paqueteriame_472_economico' => 'Paquetería 4-72 Económico',

        // Correos de México
        'correos_mexico_carta_simple' => 'Correo México Carta Simple',
        'correos_mexico_carta_certificada' => 'Correo México Carta Certificada',
        'correos_mexico_paquete_basico' => 'Correo México Paquete Básico',
        'correos_mexico_paquete_economico' => 'Correo México Paquete Económico',
        'correos_mexico_paquete_express' => 'Correo México Paquete Express',

        // Otros genéricos
        'standard' => 'Estandar',
        'express' => 'Express',
        'overnight' => 'Overnight',
        'economy' => 'Económico',
        'international' => 'Internacional',
        'domestic' => 'Nacional',
    ],
];
