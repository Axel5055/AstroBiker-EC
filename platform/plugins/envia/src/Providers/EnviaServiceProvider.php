<?php

namespace Botble\Envia\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Envia\Http\Middleware\WebhookMiddleware;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\ServiceProvider;

class EnviaServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        if (!is_plugin_active('ecommerce')) {
            return;
        }

        $this->setNamespace('plugins/envia')->loadHelpers();
    }

    public function boot(): void
    {
        if (!is_plugin_active('ecommerce')) {
            return;
        }

        $this
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes()
            ->loadAndPublishConfigurations(['general'])
            ->publishAssets();

        $this->app['events']->listen(RouteMatched::class, function (): void {
            //$this->app['router']->aliasMiddleware('envia.webhook', WebhookMiddleware::class);
        });

        $config = $this->app['config'];
        if (!$config->has('logging.channels.envia')) {
            $config->set([
                'logging.channels.envia' => [
                    'driver' => 'daily',
                    'path' => storage_path('logs/envia.log'),
                ],
            ]);
        }

        $this->app->register(HookServiceProvider::class);
        $this->app->register(CommandServiceProvider::class);
    }
}
