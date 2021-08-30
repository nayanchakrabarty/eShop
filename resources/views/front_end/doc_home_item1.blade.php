<h1>{{ $category->title }}</h1>
<hr>
@if ($articles->isNotEmpty())
    <div class="row equal padding-bottom-10">
        <div class="col-lg-4">
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
        </div>
    </div>
@endif
