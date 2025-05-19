@php
    $url = route(app(\Botble\Envia\Envia::class)->getRoutePrefixByFactor() . 'envia.show', $shipment->id);
@endphp
<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#envia-view-n-create-transaction"
    data-url="{{ $url }}" type="button">
    <!--<img src="{{ url('vendor/core/plugins/envia/images/icon.svg') }}" alt="envia" height="16" class="me-1"
        style="filter: brightness(0) invert(1);">-->
    <span>{{ trans('plugins/envia::envia.transaction.view_and_create') }}</span>
</button>

<div class="modal fade" id="envia-view-n-create-transaction" aria-labelledby="envia-view-n-create-transaction-label"
    aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="envia-view-n-create-transaction-label">
                    {{ trans('plugins/envia::envia.transaction.view_and_create') }}</h5>
                <button class="btn-close" data-bs-dismiss="modal" type="button" aria-label="Close"></button>
            </div>
            <div class="modal-body"></div>
        </div>
    </div>
</div>


@if ($shipment->label_url)
    <a class="btn btn-success" href="{{ $shipment->label_url }}" target="_blank" rel="noopener noreferrer">
        <x-core::icon name="ti ti-printer" />
        <span>{{ trans('plugins/envia::envia.print_label') }}</span>
    </a>
@endif
