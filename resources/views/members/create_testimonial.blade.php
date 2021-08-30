@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
@endsection

@section('content-header')
    <div class="site-blocks-cover"
         style="background-image: url('{{ asset('images/bg_1.jpg') }}')"></div>
@endsection

@section('content')

    <section id="products" class="section-padding">
        <div class="container">
            @if(Session::has('success_message'))
                <div class="alert alert-success">
                    <span class="glyphicon glyphicon-ok"></span>
                    {!! session('success_message') !!}

                    <button type="button" class="close" data-dismiss="alert" aria-label="close">
                        <span aria-hidden="true">&times;</span>
                    </button>

                </div>
            @endif

            @if (!empty($errors) && $errors->any())
                <ul class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif

            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                    Create Testimonial
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <div class="row">
                    <div class="col-lg-12">
                        <div class="box box-default">

                            <div class="box-header with-border">
                                <h3 class="box-title">
                                    Give your rating & review
                                </h3>
                            </div>

                            <form method="POST" action="{{ route('members.storeTestimonial') }}">
                                {{ csrf_field() }}

                                <div class="box-body">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group {{ $errors->has('rating') ? 'has-error' : '' }}">
                                                <label for="star5">Rating</label>
                                                <div class="clearfix"></div>
                                                <div class="rate">
                                                    <input type="radio" id="star5" name="rating" value="5" required>
                                                    <label for="star5" title="text">5 stars</label>
                                                    <input type="radio" id="star4" name="rating" value="4" required/>
                                                    <label for="star4" title="text">4 stars</label>
                                                    <input type="radio" id="star3" name="rating" value="3" required/>
                                                    <label for="star3" title="text">3 stars</label>
                                                    <input type="radio" id="star2" name="rating" value="2" required/>
                                                    <label for="star2" title="text">2 stars</label>
                                                    <input type="radio" id="star1" name="rating" value="1" required/>
                                                    <label for="star1" title="text">1 star</label>
                                                </div>
                                                <div class="clearfix"></div>
                                                {!! $errors->first('rating', '<p class="help-block">:message</p>') !!}
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
                                                <label for="message">Message</label>
                                                <textarea class="form-control" name="message" cols="50" rows="5"
                                                          id="message" required></textarea>

                                                {!! $errors->first('message', '<p class="help-block">:message</p>') !!}
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary btn-flat pull-right">Submit</button>
                                </div>
                            </form>

                        </div>

                    </div>
                    <div class="col-lg-4">
                    </div>
                </div>

        </div>
    </section>

@endsection

