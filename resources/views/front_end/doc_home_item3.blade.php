@if ($articles->isNotEmpty())
    <ul class="list-unstyled">
        @foreach ($articles as $article)
            <li>
                <i class="fa fa-file-text-o"></i>
                <a href="{{ route('home.helpCenter', [$productId, $category->id, $article->id]) }}">
                    {{ $article->title }}
                </a>
            </li>
        @endforeach
    </ul>
@endif
