<?php

namespace Botble\Envia\Commands;

use Botble\Ecommerce\Models\Address;
use Botble\Ecommerce\Models\StoreLocator;
use Botble\Location\Facades\Location;
use Botble\Location\Models\City;
use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Setting\Facades\Setting;
use Illuminate\Console\Command;
use Illuminate\Console\ConfirmableTrait;
use Illuminate\Contracts\Console\PromptsForMissingInput;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Input\InputOption;
use Throwable;

#[AsCommand('cms:envia:init', 'Envia initialization')]
class InitEnviaCommand extends Command implements PromptsForMissingInput
{
    use ConfirmableTrait;

    public function handle(): int
    {
        if (! $this->confirmToProceed()) {
            return self::FAILURE;
        }

        $key = $this->option('key');

        $settings = [
            'ecommerce_load_countries_states_cities_from_location_plugin' => '1',
            'ecommerce_zip_code_enabled' => '1',
            'shipping_envia_test_key' => $key,
            'shipping_envia_status' => $key ? '1' : '0',
        ];

        $this->loadLocation();

        $city = null;
        $country = Country::query()->where(['code' => 'MX'])->first(); // México
        if ($country) {
            $city = City::query()->where(['name' => 'Ciudad de México', 'country_id' => $country->id])->first();
        }

        if ($city) {
            $countryId = (string) $city->country_id;
            $stateId = (string) $city->state_id;
            $cityId = (string) $city->id;
            $zipCode = '01000';
            $address = 'Insurgentes Sur 1234';
            $phone = '+52 55 1234 5678';

            $storeLocator = StoreLocator::query()->where(['is_shipping_location' => 1, 'is_primary' => 1])->first();
            if ($storeLocator) {
                $storeLocator->update([
                    'phone' => $phone,
                    'address' => $address,
                    'country' => $countryId,
                    'state' => $stateId,
                    'city' => $cityId,
                ]);

                $settings = array_merge($settings, [
                    'ecommerce_store_phone' => $phone,
                    'ecommerce_store_address' => $address,
                    'ecommerce_store_country' => $countryId,
                    'ecommerce_store_state' => $stateId,
                    'ecommerce_store_city' => $cityId,
                    'ecommerce_store_zip_code' => $zipCode,
                ]);

                $this->info('Updated store locator id: ' . $storeLocator->id);
            }

            if (is_plugin_active('marketplace')) {
                $store = DB::table('mp_stores')->first();
                if ($store) {
                    DB::table('mp_stores')
                        ->where('id', $store->id)
                        ->update([
                            'country' => $countryId,
                            'state' => $stateId,
                            'city' => $cityId,
                            'zip_code' => $zipCode,
                            'address' => $address,
                            'phone' => $phone,
                        ]);

                    $this->info('Updated store id: ' . $store->id);
                }
            }

            $city2 = City::query()->where(['name' => 'Guadalajara', 'country_id' => $country->id])->first();
            if ($city2) {
                $address = Address::query()->where(['is_default' => 1])->first();
                if ($address) {
                    $address->update([
                        'phone' => '+52 33 1234 5678',
                        'country' => $city2->country_id,
                        'state' => $city2->state_id,
                        'city' => $city2->id,
                        'address' => 'Av. Vallarta 2345',
                        'zip_code' => '44100',
                    ]);

                    $this->info('Updated address customer id: ' . $address->customer_id);
                }
            }
        }

        Setting::delete(array_keys($settings));
        Setting::set($settings)->save();

        $this->components->info('Envia configuration initialized successfully!');

        return self::SUCCESS;
    }

    public function loadLocation(): void
    {
        $country = Country::query()->where(['code' => 'MX'])->first(); // Carga MX por defecto
        if (! $country) {
            City::query()->truncate();
            State::query()->truncate();
            Country::query()->truncate();
            DB::table('cities_translations')->truncate();
            DB::table('states_translations')->truncate();
            DB::table('countries_translations')->truncate();

            try {
                Location::downloadRemoteLocation('mx');
                $this->info('Loaded location successfully!');
            } catch (Throwable) {
                $this->warn('Cannot load location!');
            }
        }
    }

    protected function configure(): void
    {
        $this
            ->addOption('key', null, InputOption::VALUE_REQUIRED, 'The Envia API Token to use')
            ->addOption('force', 'f', null, 'Force the operation to run when in production');
    }
}
