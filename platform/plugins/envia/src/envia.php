<?php

namespace Botble\Envia;

use Botble\Ecommerce\Models\Address;
use Botble\Ecommerce\Models\Shipment as EcommerceShipment;
use Botble\Ecommerce\Services\Shippings\ShippingServiceInterface;
use Botble\Setting\Facades\Setting;
use Exception;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class Envia
{
    protected string $token;
    protected bool $logging;
    protected string $baseUrl = 'https://api-test.envia.com';

    public function __construct()
    {
        $this->token = setting('shipping_envia_api_key');
        $this->logging = (bool)setting('shipping_envia_logging', false);
    }

    /**
     * Crea un envío en Envía
     *
     * @param array $data
     * @return array
     */
    public function createShipment(array $data): array
    {
        $url = "{$this->baseUrl}/shipment/";

        $payload = $this->prepareShipmentPayload($data);

        return $this->sendRequest('post', $url, $payload);
    }

    /**
     * Obtiene tarifas para un envío existente
     *
     * @param array $data
     * @return array
     */
    public function getRates(array $data): array
    {
        $shipment = $this->createShipment($data);
        $shipmentId = data_get($shipment, 'id');

        if (!$shipmentId) {
            return ['error' => 'No se pudo crear el envío'];
        }

        $url = "{$this->baseUrl}/rate/?shipment={$shipmentId}";

        return [
            'shipment_id' => $shipmentId,
            'rates' => $this->sendRequest('get', $url),
        ];
    }

    /**
     * Genera una etiqueta para un envío
     *
     * @param string $shipmentId
     * @param string $serviceCode
     * @return array
     */
    public function generateLabel(string $shipmentId, string $serviceCode): array
    {
        $url = "{$this->baseUrl}/label/{$shipmentId}/";

        return $this->sendRequest('post', $url, [
            'service' => $serviceCode,
        ]);
    }

    /**
     * Prepara el payload para crear un envío
     *
     * @param array $data
     * @return array
     */
    protected function prepareShipmentPayload(array $data): array
    {
        // Obtener origin y destination desde el array
        $origin = Arr::get($data, 'origin', []);
        $destination = Arr::get($data, 'destination', []);

        // Preparar paquetes
        $packages = collect(Arr::get($data, 'products', []))->map(function ($product) {
            return [
                'description' => Arr::get($product, 'name', 'Paquete'),
                'weight' => (float)(Arr::get($product, 'weight', 0.5)),
                'weight_unit' => 'kg',
                'length' => (int)(Arr::get($product, 'length', 10)),
                'width' => (int)(Arr::get($product, 'width', 10)),
                'height' => (int)(Arr::get($product, 'height', 10)),
                'dimensional_unit' => 'cm',
            ];
        });

        return [
            'ship_from' => [
                'name' => Arr::get($origin, 'name', ''),
                'street1' => Arr::get($origin, 'address', ''),
                'city' => Arr::get($origin, 'city_name', ''),
                'state' => Arr::get($origin, 'state_name', ''),
                'postal_code' => Arr::get($origin, 'zip_code', ''),
                'country' => Arr::get($origin, 'country_code', 'MX'),
                'phone' => Arr::get($origin, 'phone', ''),
            ],
            'ship_to' => [
                'name' => Arr::get($destination, 'name', ''),
                'street1' => Arr::get($destination, 'address', ''),
                'city' => Arr::get($destination, 'city_name', ''),
                'state' => Arr::get($destination, 'state_name', ''),
                'postal_code' => Arr::get($destination, 'zip_code', ''),
                'country' => Arr::get($destination, 'country_code', 'MX'),
                'phone' => Arr::get($destination, 'phone', ''),
            ],
            'packages' => $packages->toArray(),
            'service_level' => 'standard'
        ];
    }

    /**
     * Realiza una solicitud HTTP a la API de Envía
     *
     * @param string $method
     * @param string $url
     * @param array $payload
     * @return array
     */
    protected function sendRequest(string $method, string $url, array $payload = []): array
    {
        try {
            $response = Http::withToken($this->token)
                ->timeout(10)
                ->$method($url, $payload);

            $this->logResponse($url, $method, $payload, $response);

            if (! $response->ok()) {
                return [
                    'error' => "Respuesta no exitosa: {$response->status()}",
                    'body' => $response->body(),
                ];
            }

            $json = $response->json();

            // Asegurarse de que se devuelve un array
            return is_array($json) ? $json : ['error' => 'Respuesta inválida del servidor', 'raw' => $json];
        } catch (Exception $e) {
            $this->logError($url, $payload, $e->getMessage());

            return ['error' => $e->getMessage()];
        }
    }

    /**
     * Guarda la respuesta en log si está habilitado
     *
     * @param string $url
     * @param string $method
     * @param array $payload
     * @param Response $response
     */
    protected function logResponse(string $url, string $method, array $payload, Response $response): void
    {
        if (! $this->logging) {
            return;
        }

        Log::build([
            'driver' => 'daily',
            'path' => storage_path('logs/envia.log'),
            'level' => 'debug',
            'days' => 7,
        ])->info("{$method}: {$url}", [
            'request' => $payload,
            'response' => $response->json(),
            'status' => $response->status(),
        ]);
    }

    /**
     * Guarda errores en log
     *
     * @param string $url
     * @param array $payload
     * @param string $error
     */
    protected function logError(string $url, array $payload, string $error): void
    {
        if ($this->logging) {
            Log::channel('envia')->error("Error en: {$url}", [
                'request' => $payload,
                'error' => $error,
            ]);
        }
    }

    /**
     * Implementando método de interfaz (ajustar según tu estructura)
     */
    public function calculateFee(array $params = []): array
    {
        return $this->getRates($params);
    }

    public function validate(): array
    {
        $url = "{$this->baseUrl}/";

        $response = Http::withToken($this->token)->get($url);

        if (! $response->ok()) {
            return ['Las credenciales no son válidas o no hay conexión con Envía'];
        }

        return [];
    }
}
