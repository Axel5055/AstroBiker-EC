<?php

namespace Botble\Openpay\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Ecommerce\Models\Order;
use Botble\Envia\Http\Services\EnviaService;
use Botble\Payment\Enums\PaymentStatusEnum;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class WebhookController extends BaseController
{

    public function webhook(
        Request $request
    ) {
        // Procesa los eventos de Openpay
        $event = $request->input('type');

        switch ($event) {
            case 'charge.succeeded':
                // Manejar un cargo exitoso
                $this->handleChargeSucceeded($request->input('transaction'));
                break;

            case 'charge.failed':
                // Manejar un cargo fallido
                $this->handleChargeFailed($request->input('transaction'));
                break;

                // Otros casos según el evento
            default:
                Log::warning('Evento no manejado:', ['type' => $event]);
                break;
        }

        // Responde con un 200 para confirmar recepción
        return response()->json(['status' => 'Webhook procesado correctamente']);
    }

    private function handleChargeSucceeded($transaction)
    {
        Log::info('Webhook detectó un cargo exitoso:', $transaction);

        if ($transaction) {
            // Busca la orden relacionada con el charge_id
            $order = Order::query()
                ->where('charge_id', $transaction['id'])
                ->first();

            if ($order) {
                $status = PaymentStatusEnum::COMPLETED;

                do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                    'amount' => $transaction['amount'], // Monto del pago
                    'currency' => $transaction['currency'], // Moneda utilizada
                    'order_id' => $order->id, // ID de la orden asociada
                    'customer_id' => $order->user_id, // Cliente que realizó el pago
                    'customer_type' => 'Botble\Ecommerce\Models\Customer', // Tipo de cliente (puedes personalizarlo)
                    'payment_channel' => OPENPAY_PAYMENT_METHOD_NAME,
                    'charge_id' => $transaction['id'], // ID del cargo
                    'status' => $status,
                ]);

                Log::info('Orden procesada');

                //SE PROCESA EL ENVIO
                $create_guia = new EnviaService();

                $infoPayment = [
                    "user_id" => $order->user_id,
                    "currency" => $transaction['currency'],
                    "amount" => $transaction['amount']
                ];

                $create_guia->createShipment($infoPayment);

                Log::info('Guia Creada');

            } else {
                Log::warning('Orden no encontrada para el charge_id recibido en el webhook.', [
                    'charge_id' => $transaction['id'],
                ]);
            }
        } else {
            Log::error('El webhook no recibió datos válidos para un cargo exitoso.');
        }
    }

    private function handleChargeFailed($transaction)
    {
        // Ejemplo de lógica para un cargo fallido
        Log::error('Cargo fallido:', $transaction);
    }
}
