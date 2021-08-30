<ul class="list-unstyled">
    @foreach($articles as $article)
        <li>
            <a href="{{ $article->href }}">
                <div class="media">
                    <div class="media-left">
                        <i class="fa fa-2x fa-file-text-o"></i>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">
                            {{ $article->title }}
{{--                            <small class="pull-right">{!! $article->breadCrumbs  !!}</small>--}}
                        </h4>
{{--                        {!! $article->cleanDetails !!}--}}
                    </div>
                </div>
            </a>
        </li>
    @endforeach
</ul>
