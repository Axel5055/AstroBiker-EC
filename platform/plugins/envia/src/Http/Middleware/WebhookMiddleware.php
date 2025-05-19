<?php

namespace Botble\Envia\Http\Middleware;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Closure;

class WebhookMiddleware
{
    public function handle($request, Closure $next)
    {
        if (setting('shipping_envia_webhooks', 1) == 1 && ($token = $request->input('_token'))) {
            $apiToken = setting('shipping_envia_api_key');

            if ($apiToken && $apiToken == $token) {
                return $next($request);
            }
        }

        return (new BaseHttpResponse())->setError()->setMessage('¡Ops!');
    }
}
