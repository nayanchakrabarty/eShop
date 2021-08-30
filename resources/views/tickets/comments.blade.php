@extends('layouts.app')

@section('css')
    <link rel="stylesheet" href="{{ asset('vendor/summernote/summernote.css') }}">
@endsection

@section('content-header')
    <h1>
        {{ $ticket->subject }}
        <small>
            @if ($ticket->status == 'Closed')
                <span class="label label-warning">{{ $ticket->status }}</span>
            @elseif ($ticket->status == 'Denied')
                <span class="label label-danger">{{ $ticket->status }}</span>
            @else
                <span class="label label-success">{{ $ticket->status }}</span>
            @endif
        </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ url('/tickets') }}">Tickets</a></li>
        <li class="active">Comments</li>
    </ol>
@endsection

@section('content')
    @if(Session::has('success_message'))
        <div class="alert alert-success">
            <span class="glyphicon glyphicon-ok"></span>
            {!! session('success_message') !!}

            <button type="button" class="close" data-dismiss="alert" aria-label="close">
                <span aria-hidden="true">&times;</span>
            </button>

        </div>
    @endif

    @if ($errors->any())
        <ul class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif

    <div class="row">
        <div class="col-xs-12">

            <!-- The time line -->
            <ul class="timeline">
                <!-- timeline item -->
                @if ($ticket->status == 'Open')
                    <li>
                        <i class="fa fa-pencil bg-blue"></i>

                        <div class="timeline-item">

                            <div class="box collapsed-box">
                                <div class="box-header with-border">
                                    <a href="{{ route('tickets.index') }}"
                                       class="btn btn-sm btn-primary"
                                       title="Create New User">
                                        <i aria-hidden="true" class="fa fa-arrow-left"></i> Go Back
                                    </a>

                                    <div class="pull-right">
                                        <button type="button" class="btn btn-success btn-sm btn-flat"
                                                data-widget="collapse">
                                            <i class="fa fa-reply"></i> YOUR REPLY
                                        </button>
                                    </div>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body" style="display: none;">

                                    <form method="POST" id="formReplyComment"
                                          action="{{ route('tickets.storeComment') }}"
                                          accept-charset="UTF-8">
                                        {{ csrf_field() }}

                                        <input type="hidden" name="ticket_id" value="{{ $ticket->id }}">

                                        <div class="form-group">
                                            <textarea class="form-control rich-textarea"
                                                      aria-label="reply"
                                                      data-image-dir="comments"
                                                      name="message" cols="50" rows="10"
                                                      id="message"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <!-- ./box-body -->
                                <div class="box-footer">
                                    <a href="javascript:void(0)" onclick="submitComment()"
                                       class="btn btn-primary btn-sm pull-right">
                                        SEND REPLY
                                    </a>
                                    <a class="btn btn-danger btn-sm" data-widget="collapse">DISCARD</a>
                                </div>
                            </div>

                        </div>
                    </li>
                @endif

                @foreach($comments as $comment)
                    <li>
                        <img
                            src="{{ asset('storage/profiles/' . optional(optional($comment->user)->uploadedFile)->filename) }}"
                            class="circular" alt="User Image">

                        <div class="timeline-item">

                            <span class="time">
                                <i class="fa fa-clock-o"></i>
                                {{ \App\Helpers\CommonHelper::displayTimeFormat($comment->created_at) }}
                            </span>

                            <h3 class="timeline-header">
                                Replied by <b>{{ optional($comment->user)->name }}</b>

                                @foreach(optional($comment->user)->roles as $role)
                                    <small>
                                        <span class="label bg-primary">{{ $role->name }}</span>
                                    </small>
                                @endforeach
                            </h3>

                            <div class="timeline-body">
                                {!! $comment->message !!}
                            </div>

                            <div class="timeline-footer">
                                @if (App\Helpers\CommonHelper::isCapable('comments.destroy'))
                                    <form method="POST" action="{!! route('comments.destroy', $comment->id) !!}">
                                        <input name="_method" value="DELETE" type="hidden">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn btn-xs btn-danger"
                                                title="Delete Comment"
                                                onclick="return confirm('Delete Comment?')">
                                            <i aria-hidden="true" class="fa fa-trash"></i>
                                        </button>
                                    </form>
                                @endif
                            </div>

                        </div>

                    </li>
                @endforeach

                <li>
                    <img
                        src="{{ asset('storage/profiles/' . optional(optional($ticket->creator)->uploadedFile)->filename) }}"
                        class="circular" alt="User Image">

                    <div class="timeline-item">
                        <span class="time">
                            <i class="fa fa-clock-o"></i>
                            {{ \App\Helpers\CommonHelper::displayTimeFormat($ticket->created_at) }}
                        </span>

                        <h3 class="timeline-header">
                            Open by <b>{{ optional($ticket->creator)->name }} </b>
                            @foreach(optional($ticket->creator)->roles as $role)
                                <small>
                                    <span class="label bg-primary">{{ $role->name }}</span>
                                </small>
                            @endforeach
                        </h3>

                        <div class="timeline-body">
                            {!! $ticket->message !!}
                        </div>
                    </div>
                </li>

                <li>
                    <i class="fa fa-clock-o bg-gray"></i>
                </li>
            </ul>

        </div>
        <!-- /.col -->
    </div>
@endsection

@section('javascript')
    <script src="{{ asset('vendor/summernote/summernote.min.js') }}"></script>
    <script src="{{ asset('vendor/summernote/summernote.settings.js') }}"></script>
    <script>
        function submitComment() {
            if ($('.rich-textarea').val().length > 0) {
                $('#formReplyComment').submit();
            }
        }

    </script>
@endsection
