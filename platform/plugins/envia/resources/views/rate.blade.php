<div class="list-group-item">
    {!! Form::input(
        'radio',
        'shipping_option',
        Arr::get($item, 'rate_token'),
        array_merge($attributes, [
            'class' => 'magic-radio',
            'id' => 'shipping-method-envia-' . $index,
        ]),
    ) !!}
    <label for="shipping-method-envia-{{ $index }}">
        <div>
            @if ($image = Arr::get($item, 'carrier_logo'))
                <img src="{{ $image }}" alt="{{ Arr::get($item, 'service_name') }}"
                    style="max-height: 40px; max-width: 55px">
            @endif
            <span>
                {{ Arr::get($item, 'service_name') }} -
                {{ format_price($item['total_price']) }}
            </span>
            @if ($item['total_price'] != $order->shipping_amount && ($deviant = $order->shipping_amount - $item['total_price']))
                <small class="{{ $deviant > 0 ? 'text-success' : 'text-warning' }}">
                    (<span>{{ $deviant > 0 ? '-' : '+' }}</span><span>{{ format_price($deviant) }}</span>)
                </small>
            @endif
        </div>
        @if ($days = Arr::get($item, 'estimated_days'))
            <div>
                <small class="text-secondary">
                    {{ trans('plugins/envia::envia.estimated_days', ['day' => $days]) }}
                </small>
            </div>
        @endif
    </label>
</div>
