<ul>
    @foreach ($payments->payments as $payment)
        <li>
            @include('plugins/openpay::detail', compact('payment'))
        </li>
    @endforeach
</ul>
