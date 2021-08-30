@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/_all-skins.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/dataTables.bootstrap.min.css') }}">
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
                    My Tickets
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="box">
                        <div class="box-body">

                            @if(count($tickets) == 0)
                                <div class="row">
                                    <div class="col-sm-12">
                                        @if (App\Helpers\CommonHelper::isCapable('members.createTicket'))
                                            <a href="{{ route('members.createTicket') }}"
                                               class="btn btn-sm btn-success pull-right"
                                               title="Create New Ticket">
                                                <i aria-hidden="true" class="fa fa-plus"></i> Create
                                            </a>
                                        @endif
                                    </div>
                                </div>

                                <div class="panel-body text-center">
                                    <h4>No Tickets Available!</h4>
                                </div>
                            @else
                                <div class="table-responsive">
                                    <table id="dataTable" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Ticket Id</th>
                                            <th>Subject</th>
                                            <th>Department</th>
                                            <th>Priority</th>
                                            <th>Created On</th>
                                            <th>Status</th>
                                            <th style="min-width:60px;" class="text-center">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($tickets as $ticket)
                                            <tr>
                                                <td>{{ (10000 + $ticket->id) }}</td>
                                                <td>
                                                    {{ $ticket->subject }}
                                                    @if ($ticket->customer_action == 'Unread')
                                                        <span class="label label-danger">Unread</span>
                                                    @endif
                                                </td>
                                                <td>{{ optional($ticket->department)->name }}</td>
                                                <td>{{ $ticket->priority }}</td>
                                                <td>{{ $ticket->created_at }}</td>
                                                <td>
                                                    @if ($ticket->status == 'Closed')
                                                        <span class="label label-warning">{{ $ticket->status }}</span>
                                                    @elseif ($ticket->status == 'Denied')
                                                        <span class="label label-danger">{{ $ticket->status }}</span>
                                                    @else
                                                        <span class="label label-success">{{ $ticket->status }}</span>
                                                    @endif
                                                </td>
                                                <td class="text-center" style="min-width:60px;">
                                                    <a href="{{ route('members.viewTicket', $ticket->id ) }}"
                                                       class="btn btn-xs btn-info" title="View Ticket">
                                                        <i aria-hidden="true" class="fa fa-eye"></i> View
                                                    </a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>

                            @endif

                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>

        </div>
    </section>


@endsection

<!-- page script -->
@section('javascript')
    <script src="{{ asset('vendor/admin-lte/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('vendor/admin-lte/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
    <script>
        $(function () {
            $('#dataTable').DataTable({
                order: [[0, 'desc']],
                "columnDefs": [
                    {"orderable": false, "targets": -1}
                ],
                initComplete: function () {
                    $('.dataTables_filter').append(
                        '<a href="{{ route('members.createTicket') }}" ' +
                        'style="margin-left: 10px" ' +
                        'class="btn btn-sm btn-flat btn-success" ' +
                        'title="Create New Tickets"> ' +
                        '<i aria-hidden="true" class="fa fa-plus"></i> Create' +
                        '</a>'
                    );
                }
            })
        });
    </script>
@endsection
