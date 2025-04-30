<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Envia\Http\Controllers'], function (): void {
    AdminHelper::registerRoutes(function (): void {
        Route::group([
            'prefix' => 'shipments/envia',
            'as' => 'ecommerce.shipments.envia.',
            'permission' => 'ecommerce.shipments.index',
        ], function (): void {
            Route::controller('EnviaController')->group(function (): void {
                // Mostrar detalles del envío
                Route::get('show/{id}', [
                    'as' => 'show',
                    'uses' => 'show',
                ]);

                // Crear transacción (generar etiqueta)
                Route::post('transactions/create/{id}', [
                    'as' => 'transactions.create',
                    'uses' => 'createTransaction',
                    'permission' => 'ecommerce.shipments.edit',
                ]);

                // Obtener tarifas
                Route::get('rates/{id}', [
                    'as' => 'rates',
                    'uses' => 'getRates',
                ]);

                // Actualizar tarifa seleccionada
                Route::post('update-rate/{id}', [
                    'as' => 'update-rate',
                    'uses' => 'updateRate',
                    'permission' => 'ecommerce.shipments.edit',
                ]);

                // Ver logs
                Route::get('view-logs/{file}', [
                    'as' => 'view-log',
                    'uses' => 'viewLog',
                ]);
            });

            // Configuración general de Envía
            Route::group(['prefix' => 'settings', 'as' => 'settings.'], function (): void {
                Route::post('update', [
                    'as' => 'update',
                    'uses' => 'EnviaSettingController@update',
                    'middleware' => 'preventDemo',
                    'permission' => 'shipping_methods.index',
                ]);
            });
        });
    });

    // Si usas Marketplace, registramos también rutas para vendedores
    if (is_plugin_active('marketplace')) {
        Theme::registerRoutes(function (): void {
            Route::group([
                'prefix' => 'vendor',
                'as' => 'marketplace.vendor.',
                'middleware' => ['vendor'],
            ], function (): void {
                Route::group(['prefix' => 'orders', 'as' => 'orders.'], function (): void {
                    Route::group(['prefix' => 'envia', 'as' => 'envia.'], function (): void {
                        Route::controller('EnviaController')->group(function (): void {
                            Route::get('show/{id}', [
                                'as' => 'show',
                                'uses' => 'show',
                            ]);

                            Route::post('transactions/create/{id}', [
                                'as' => 'transactions.create',
                                'uses' => 'createTransaction',
                            ]);

                            Route::get('rates/{id}', [
                                'as' => 'rates',
                                'uses' => 'getRates',
                            ]);

                            Route::post('update-rate/{id}', [
                                'as' => 'update-rate',
                                'uses' => 'updateRate',
                            ]);
                        });
                    });
                });
            });
        });
    }
});

// Webhook para recibir notificaciones de Envía (opcional)
Route::group([
    'namespace' => 'Botble\Envia\Http\Controllers',
    'prefix' => 'envia',
    'middleware' => ['api', 'envia.webhook'],
    'as' => 'envia.',
], function (): void {
    Route::controller('EnviaWebhookController')->group(function (): void {
        Route::post('webhooks', [
            'uses' => 'index',
            'as' => 'webhooks',
        ]);
    });
});
