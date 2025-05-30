@if (is_plugin_active('blog'))
    @php
        $posts = get_recent_posts($config['number_display']);
    @endphp
    @if ($posts->isNotEmpty())
        <aside class="widget widget--blog widget--recent-post">
            <h3 class="widget__title">{{ $config['name'] }}</h3>
            <div class="widget__content">
                @foreach ($posts as $post)
                    <a href="{{ $post->url }}">{!! BaseHelper::clean($post->name) !!}</a>
                @endforeach
            </div>
        </aside>
    @endif
@endif


