<?php

namespace Botble\Openpay\Http\Requests;

use Botble\Support\Http\Requests\Request;

class OpenpayPaymentCallbackRequest extends Request
{
    public function rules(): array
    {
        return [
            'amount' => 'required|numeric',
            'currency' => 'required',
        ];
    }
}
