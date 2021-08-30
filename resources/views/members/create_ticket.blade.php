@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/summernote/summernote-bs4.css') }}">
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
                    Create Ticket
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <h3 class="box-title">
                                Create your ticket
                            </h3>
                        </div>

                        <form method="POST" action="{{ route('members.storeTicket') }}" enctype="multipart/form-data">
                            {{ csrf_field() }}

                            <div class="box-body">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('subject') ? 'has-error' : '' }}">
                                            <label for="subject">Subject</label>
                                            <input class="form-control" name="subject" type="text" id="subject"
                                                   value="{{ old('subject', optional($ticket)->subject) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('subject', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('department_id') ? 'has-error' : '' }}">
                                            <label for="department_id">Department</label>
                                            <select class="form-control  select-admin-lte" id="department_id"
                                                    name="department_id" required>
                                                <option value="">-----Select-----</option>
                                                @foreach ($departments as $key => $department)
                                                    <option value="{{ $key }}"
                                                        {{ old('department_id', optional($ticket)->department_id) == $key ? 'selected' : '' }}>
                                                        {{ $department }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            {!! $errors->first('department_id', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('priority') ? 'has-error' : '' }}">
                                            <label for="priority">Priority</label>
                                            <select class="form-control  select-admin-lte" id="priority"
                                                    name="priority" required>
                                                <option value="">-----Select-----</option>
                                                @foreach (['Low' => 'Low', 'Medium' => 'Medium', 'High' => 'High'] as $key => $text)
                                                    <option value="{{ $key }}"
                                                        {{ old('priority', optional($ticket)->priority) == $key ? 'selected' : '' }}>
                                                        {{ $text }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            {!! $errors->first('priority', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('product_id') ? 'has-error' : '' }}">
                                            <label for="product_id">Project</label>
                                            <select class="form-control select-admin-lte" id="product_id"
                                                    name="product_id" required>
                                                <option value="">-----Select-----</option>
                                                @foreach ($products as $key => $title)
                                                    <option value="{{ $key }}"
                                                        {{ old('product_id', optional($ticket)->product_id) == $key ? 'selected' : '' }}>
                                                        {{ $title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            {!! $errors->first('department_id', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
                                            <label for="message">Message</label>
                                            <textarea class="form-control rich-textarea" name="message" cols="50"
                                                      rows="10"
                                                      id="message" required></textarea>

                                            {!! $errors->first('message', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary pull-right">Add ticket</button>
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

@section('javascript')
    <script src="{{ asset('vendor/summernote/summernote-bs4.min.js') }}"></script>
    <script>

        $(document).ready(function () {
            // Code segment for rich text editor
            let summerNoteObj = $('.rich-textarea');
            let summerNoteParams = {
                height: 200,
                callbacks: {
                    onChange: function (contents) {
                        summerNoteObj.val(contents);
                        summerNoteObj.valid();
                    },
                    onBlurCodeview: function(contents) {
                        summerNoteObj.val(contents);
                        summerNoteObj.valid();
                    }
                }
            };
            summerNoteObj.summernote(summerNoteParams);
        });

    </script>
@endsection

