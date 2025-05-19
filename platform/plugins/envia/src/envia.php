<?php

namespace Botble\Envia;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Support\Services\Cache\Cache;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Psr\Log\LoggerInterface;
use Throwable;

class Envia
{
    protected ?string $apiKey;

    protected string $baseUrl;

    protected Cache $cache;

    protected array $packageTypes = [];

    protected array $serviceLevels = [];

    protected ?string $currency;

    protected LoggerInterface $logger;

    protected bool $logging = true;

    protected string $distanceUnit = 'cm';

    protected string $massUnit = 'g';

    protected array $origin;

    public function __construct()
    {
        $this->apiKey = setting('shipping_envia_api_key');
        $this->baseUrl = 'https://api.envia.com';

        $this->currency = get_application_currency()->title;
        $this->origin = EcommerceHelper::getOriginAddress();

        $this->packageTypes = config('plugins.envia.general.package_types', []);
        $this->serviceLevels = config('plugins.envia.general.service_levels', []);

        $this->cache = Cache::make(static::class);

        $this->logger = Log::channel('envia');
    }

    public function getName(): string
    {
        return 'Envia';
    }

    public function validate(): array
    {
        $errors = [];

        if (!$this->apiKey) {
            $errors[] = __('La clave API de Envia.com es requerida.');
        } elseif (!$this->validateActiveApiToken()) {
            $errors[] = __('La clave API de Envia.com no es válida.');
        }

        return $errors;
    }

    protected function validateActiveApiToken(): bool
    {
        try {
            $response = Http::withToken($this->apiKey)
                ->get($this->baseUrl . '/ship/guides');

            return $response->successful();
        } catch (Throwable $ex) {
            report($ex);
            $this->log([__LINE__, $ex->getMessage()]);
            return false;
        }
    }

    public function getRates(array $params): array
    {
        try {
            $request = $this->prepareRateRequest($params);

            $response = Http::withToken($this->apiKey)
                ->post($this->baseUrl . '/ship/rate', $request);

            if ($response->successful()) {
                return ['shipment' => ['rates' => $response->json('data')]];
            } else {
                $this->log([__LINE__, $response->body()]);
            }
        } catch (Throwable $ex) {
            report($ex);
            $this->log([__LINE__, $ex->getMessage()]);
        }

        return ['shipment' => ['rates' => []]];
    }

    protected function prepareRateRequest(array $params): array
    {
        return [
            'origin' => [
                'name' => $this->origin['name'] ?? 'Tienda',
                'company' => $this->origin['company'] ?? '',
                'email' => $this->origin['email'] ?? '',
                'phone' => $this->origin['phone'] ?? '',
                'street' => $this->origin['address'] ?? '',
                'number' => $this->origin['address_2'] ?? '',
                'district' => $this->origin['state'] ?? '',
                'city' => $this->origin['city'] ?? '',
                'state' => $this->origin['state'] ?? '',
                'country' => $this->origin['country'] ?? 'MX',
                'postalCode' => $this->origin['zip_code'] ?? '',
            ],
            'destination' => $params['address_to'] ?? [],
            'packages' => $params['parcels'] ?? [],
            'type' => 'quoting',
            'shipment' => ['insurance' => false],
        ];
    }

    public function createShipment(array $params): array
    {
        try {
            $response = Http::withToken($this->apiKey)
                ->post($this->baseUrl . '/ship/guides', $params);

            if ($response->successful()) {
                return $response->json('data');
            } else {
                $this->log([__LINE__, $response->body()]);
            }
        } catch (Throwable $ex) {
            report($ex);
            $this->log([__LINE__, $ex->getMessage()]);
        }

        return [];
    }

    public function getLabel(string $trackingNumber): ?string
    {
        try {
            $response = Http::withToken($this->apiKey)
                ->get($this->baseUrl . '/ship/labels/' . $trackingNumber);

            if ($response->successful()) {
                return $response->json('data')['label_url'] ?? null;
            } else {
                $this->log([__LINE__, $response->body()]);
            }
        } catch (Throwable $ex) {
            report($ex);
            $this->log([__LINE__, $ex->getMessage()]);
        }

        return null;
    }

    public function getPackageTypes(): array
    {
        return $this->packageTypes;
    }

    public function getServiceLevels(): array
    {
        return $this->serviceLevels;
    }

    public function getTracking(string $trackingNumber): array
    {
        try {
            $response = Http::withToken($this->apiKey)
                ->get($this->baseUrl . '/tracking/' . $trackingNumber);

            if ($response->successful()) {
                return $response->json('data');
            } else {
                $this->log([__LINE__, $response->body()]);
            }
        } catch (Throwable $ex) {
            report($ex);
            $this->log([__LINE__, $ex->getMessage()]);
        }

        return [];
    }

    public function log(array $logs): void
    {
        if ($this->logging) {
            $this->logger->debug(implode(' | ', $logs));
        }
    }

    protected function getHeaders(): array
    {
        return [
            'Authorization' => 'Bearer ' . $this->apiKey,
            'Accept' => 'application/json',
            'Content-Type' => 'application/json',
        ];
    }


    // En la clase Envia.php

    public function getShipment(string $shipmentId): array
    {
        try {
            $response = Http::withHeaders($this->getHeaders())
                ->get("{$this->baseUrl}/shipments/$shipmentId");

            return $response->json();
        } catch (\Exception $e) {
            return [
                'status' => 'error',
                'message' => $e->getMessage(),
            ];
        }
    }


    public function getRoutePrefixByFactor(): string
    {
        if (is_plugin_active('marketplace') && ! is_in_admin(true)) {
            return 'marketplace.vendor.orders.';
        }

        return 'ecommerce.shipments.';
    }
}
