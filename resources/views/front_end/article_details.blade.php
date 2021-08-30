@extends('layouts.help_center')

@section('content-header')
    <header class="content-header container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <h1 class="content-max-width">
                    {{ optional($selectedArticle)->title }}
                </h1>
            </div>
        </div>
    </header>
@endsection

@section('content')
    <div class="content container-fluid">
        <div class="row">
            <div class="col-lg-8">
                {!! optional($selectedArticle)->details !!}
            </div>

            <div class="col-lg-4">
                <h3>{{ optional($selectedCategory)->title }}</h3>
                <ul class="list-unstyled">
                    @foreach($articles as $article)
                        <li>
                            <a href="{{ route('home.helpCenter', [$productId, $selectedCategory->id, $article->id]) }}">
                                @if (optional($selectedArticle)->id == $article->id)
                                    <b>{{ $article->title }}</b>
                                @else
                                    {{ $article->title }}
                                @endif
                            </a>
                        </li>
                    @endforeach
                </ul>
                <br>

                <div class="box box-solid limit-p-width">
                    <div class="box-body affiliate">
                        <div class="heading">YOUR ADVERTISEMENT</div>
                        <a href="#">
                            <img src="{{ asset('storage/sites/kero-html-pro-screenshot.jpg') }}" alt="Advertisement" class="img-responsive">
                        </a>

                        <div class="caption">
                            <h3>Cattle Management ─ $18</h3>
                            <p>Responsive Admin Dashboard</p>
                            <p>
                                <a href="#" class="btn btn-primary" role="button">Preview</a>
                                <a href="#" class="btn btn-success" role="button">Buy Now</a>
                            </p>
                            <p><i class="fa fa-shopping-cart margin-r5"></i> 65+ purchases</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
