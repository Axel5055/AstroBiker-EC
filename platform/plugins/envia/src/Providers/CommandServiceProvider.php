<?php

namespace Botble\Envia\Providers;

use Botble\Envia\Commands\InitEnviaCommand;
use Illuminate\Support\ServiceProvider;

class CommandServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        $this->commands([
            InitEnviaCommand::class,
        ]);
    }
}
