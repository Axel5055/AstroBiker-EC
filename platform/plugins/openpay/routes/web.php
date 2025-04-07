<?php

use Botble\Openpay\Http\Controllers\OpenpayController;
use Botble\Openpay\Http\Controllers\WebhookController;
use Illuminate\Support\Facades\Route;

Route::prefix('payment/openpay')
    ->name('payments.openpay.')
    ->group(function (): void {
        Route::post('webhook', [WebhookController::class, 'webhook'])->name('webhook');

        Route::middleware(['web', 'core'])->group(function (): void {
            Route::get('status', [OpenpayController::class, 'getCallback'])->name('status');
        });
    });
