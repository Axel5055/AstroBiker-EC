<ol>
    <li>
        <p>
            <a href="https://www.openpay.mx/" target="_blank">
                {{ __('Register an account on :name', ['name' => 'Openpay']) }}
            </a>
        </p>
    </li>
    <li>
        <p>
            {{ __('After registration at :name, you will have Merchant ID, Private Key', ['name' => 'Openpay']) }}
        </p>
    </li>
    <li>
        <p>
            {{ __('Enter Merchant ID, Private Key into the box in right hand') }}
        </p>
    </li>
    <li>
        <p>
            {!! BaseHelper::clean(
                'Then you need to create a new webhook. To create a webhook, go to <strong>Account Settings</strong>-><strong>API keys</strong>-><strong>Webhooks</strong> and paste the below url to <strong>Webhook URL</strong> field. At <strong>Active Events</strong> field, check to <strong>Payment Events</strong> and <strong>Order Events</strong> checkbox.',
            ) !!}
        </p>
    </li>
</ol>
