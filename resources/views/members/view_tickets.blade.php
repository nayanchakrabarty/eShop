@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/_all-skins.min.css') }}">
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

            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
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
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <div class="row">
                <div class="col-md-12">

                    <!-- The time line -->
                    <ul class="timeline">
                        <!-- timeline item -->
                        @if ($ticket->status == 'Open')
                            <li>
                                <i class="fa fa-pencil bg-blue"></i>

                                <div class="timeline-item">

                                    <div class="box">
                                        <div class="box-header with-border">
                                            <a href="{{ route('members.myTickets') }}"
                                               class="btn btn-sm btn-primary"
                                               title="Create New User">
                                                <i aria-hidden="true" class="fa fa-arrow-left"></i> Go Back
                                            </a>

                                            <button class="btn btn-success btn-sm btn-flat pull-right"
                                                    type="button" data-toggle="collapse"
                                                    data-target=".multi-collapse"
                                                    aria-expanded="false"
                                                    aria-controls="box-body box-footer">
                                                <i class="fa fa-reply"></i> REPLY
                                            </button>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-body collapse multi-collapse" id="box-body">
                                            <form method="POST" id="formReplyComment"
                                                  action="{{ route('members.storeComment') }}"
                                                  accept-charset="UTF-8">
                                                {{ csrf_field() }}

                                                <input type="hidden" name="ticket_id" value="{{ $ticket->id }}">

                                                <div class="form-group">
                                                    <textarea class="form-control rich-textarea"
                                                              aria-label="reply"
                                                              name="message" cols="50" rows="10"
                                                              id="message" required></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- ./box-body -->
                                        <div class="box-footer collapse multi-collapse" id="box-footer">
                                            <button type="button"
                                                    class="btn btn-primary btn-sm btn-flat pull-right btn-reply">
                                                SEND REPLY
                                            </button>

                                            <button type="button"
                                                    class="btn btn-danger btn-flat btn-sm"
                                                    data-toggle="collapse"
                                                    data-target=".multi-collapse"
                                                    aria-expanded="false"
                                                    aria-controls="box-body box-footer">DISCARD
                                            </button>
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
                                        @if (Auth::user()->id == $comment->user_id)
                                            Replied by <b>You</b>
                                        @else
                                            Replied by <b>Support Team</b>
                                        @endif
                                    </h3>

                                    <div class="timeline-body">
                                        {!! $comment->message !!}
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
                                    @if (Auth::user()->id == $ticket->created_by)
                                        Open by <b>You</b>
                                    @else
                                        Open by <b>Support Team</b>
                                    @endif
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
            </div>

        </div>
    </section>

@endsection

@section('javascript')
    <script src="{{ asset('vendor/summernote/summernote-bs4.min.js') }}"></script>
    <script src="{{ asset('vendor/summernote/summernote.settings.js') }}"></script>
    <script>
        $(function () {
            $('.btn-reply').click(function () {
                $('#formReplyComment').submit();
            });
        });
    </script>
@endsection
