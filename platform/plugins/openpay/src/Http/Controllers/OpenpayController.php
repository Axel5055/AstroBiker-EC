<?php

namespace Botble\Openpay\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Openpay\Http\Requests\OpenpayPaymentCallbackRequest;
use Botble\Payment\Supports\PaymentHelper;
use Botble\Openpay\Services\Gateways\OpenpayPaymentService;

class OpenpayController extends BaseController
{
    public function getCallback(
        OpenpayPaymentCallbackRequest $request,
        OpenpayPaymentService $openPayPaymentService,
        BaseHttpResponse $response
    ) {

        $status = $openPayPaymentService->getPaymentStatus();

        if (! $status) {
            return $response
                ->setError()
                ->setNextUrl(PaymentHelper::getCancelURL())
                ->withInput()
                ->setMessage(__('Payment failed!'));
        }

        $openPayPaymentService->afterMakePayment($request->input());

        return $response
            ->setNextUrl(PaymentHelper::getRedirectURL())
            ->setMessage(__('Checkout successfully!'));
    }
}
