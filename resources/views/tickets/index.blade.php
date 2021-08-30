@extends('layouts.app')

@section('css')
    <link rel="stylesheet" href="{{ asset('bootstrap-daterangepicker/daterangepicker.css') }}">
@endsection

@section('content-header')
    <h1>Tickets</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Tickets</a></li>
        <li class="active">Listing</li>
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

            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Filter Box</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-sm btn-default" data-widget="collapse">
                            <i class="fa fa-compress"></i>
                        </button>
                        <a href="{{ route('tickets.index') }}" class="btn btn-info btn-sm" title="Collapse">
                            <i class="fa fa-refresh"></i> Reset
                        </a>
                        @if (App\Helpers\CommonHelper::isCapable('tickets.create'))
                            <a href="{{ route('tickets.create') }}"
                               class="btn btn-sm btn-success"
                               title="Create New Ticket">
                                <i class="fa fa-plus"></i> Create
                            </a>
                        @endif
                    </div>
                </div>

                <div class="box-body">

                    <form id="formSearch" method="POST" class="form-horizontal">
                        <div class="form-group">
                            <label for="ticket_id" class="control-label col-lg-2">Ticket Id</label>
                            <div class="col-lg-4">
                                <input class="form-control" name="ticket_id" id="ticket_id">
                            </div>

                            <label for="agent_action" class="control-label col-lg-2">Agent Action</label>
                            <div class="col-lg-4">
                                <select class="form-control" name="agent_action" id="agent_action">
                                    <option value="">------All------</option>
                                    <option value="New">New</option>
                                    <option value="Answered">Answered</option>
                                    <option value="Not Answered">Not Answered</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="status" class="control-label col-lg-2">Status</label>
                            <div class="col-lg-4">
                                <select class="form-control" name="status" id="status">
                                    <option value="">------All Tickets------</option>
                                    <option value="Open" selected>Open Ticket</option>
                                    <option value="Closed">Closed Ticket</option>
                                    <option value="Denied">Denied Ticket</option>
                                </select>
                            </div>

                            <label for="priority" class="control-label col-lg-2">Priority</label>
                            <div class="col-lg-4">
                                <select class="form-control" name="priority" id="priority">
                                    <option value="">------All------</option>
                                    <option value="Low">Low</option>
                                    <option value="Medium">Medium</option>
                                    <option value="High">High</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="department_id" class="control-label col-lg-2">Department</label>
                            <div class="col-lg-4">
                                <select class="form-control" name="department_id" id="department_id">
                                    <option value="">------All------</option>
                                    @foreach ($departments as $key => $department)
                                        <option value="{{ $key }}">
                                            {{ $department }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <label for="created_by" class="control-label col-lg-2">Created By</label>
                            <div class="col-lg-4">
                                <select class="form-control select2" name="created_by" id="created_by">
                                    <option value="">------All------</option>
                                    @foreach ($users as $key => $user)
                                        <option value="{{ $key }}">
                                            {{ $user }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="date_range" class="control-label col-lg-2">Date</label>
                            <div class="col-lg-4">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input class="form-control date-range-picker" name="date_range" type="text"
                                           id="date_range">
                                </div>
                            </div>

                            @if (App\Helpers\CommonHelper::isCapable('tickets.storeAssignTo'))
                                <label for="assign_to" class="control-label col-lg-2">Assign To</label>
                                <div class="col-lg-3">
                                    <select class="form-control select2" name="assign_to" id="assign_to">
                                        <option value="">------All------</option>
                                        @foreach ($assignTos as $assignTo)
                                            <option value="{{ $assignTo->id }}">
                                                {{ $assignTo->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            @endif

                            <div class="col-lg-1 pull-right">
                                <button type="button" id="btnSearch" class="btn btn-primary pull-right">Go
                                </button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <div class="box">

                <div class="box-body">

                    <div class="table-responsive">
                        <table id="dataTable" class="table table-bordered table-striped" style="width:100%">
                            <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Ticket Id</th>
                                <th>Subject</th>
                                <th>Created By</th>
                                <th>Priority</th>
                                <th>Department</th>
                                <th>Assign To</th>
                                <th>Status</th>
                                <th>Updated At</th>
                                <th style="min-width:120px;" class="text-center">Action</th>
                                @if (App\Helpers\CommonHelper::isCapable('tickets.storeAssignTo'))
                                    <th class="text-center" style="width: 50px;">
                                        <div class="icheck-flat-blue">
                                            <label for="check_all">
                                                <input id="check_all" name="check_all" type="checkbox" value="1">
                                            </label>
                                        </div>
                                    </th>
                                @endif
                            </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection

<!-- page script -->
@section('javascript')
    <script src="{{ asset('moment/min/moment.min.js') }}"></script>
    <script src="{{ asset('bootstrap-daterangepicker/daterangepicker-custom.js') }}"></script>
    <script>
        $(function () {
            // Date range as a button
            let start = moment().subtract(29, 'days');
            let end = moment();
            let startDate = start.format('YYYY-MM-DD');
            let endDate = end.format('YYYY-MM-DD');
            let dateRangeBtnObj = $('#date_range');
            let dataTableUrl = '';

            let dataTable = $('#dataTable').DataTable({
                "order": [[8, "desc"]],
                processing: false,
                serverSide: true,
                ajax: function (data, callback, settings) {
                },
                columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex'},
                    {data: 'id', name: 'id'},
                    {data: 'subject', name: 'subject'},
                    {data: 'created_by', name: 'created_by'},
                    {data: 'priority', name: 'priority'},
                    {data: 'department', name: 'department'},
                    {data: 'assignTo', name: 'assignTo'},
                    {data: 'status', name: 'status'},
                    {data: 'updated_at', name: 'updated_at'},
                    {
                        data: 'action',
                        name: 'action',
                        className: "text-center",
                        orderable: false,
                        searchable: false
                    }
                    @if (App\Helpers\CommonHelper::isCapable('tickets.storeAssignTo'))
                    , {
                        data: 'checkbox',
                        name: 'checkbox',
                        className: "text-center",
                        orderable: false,
                        searchable: false
                    }
                    @endif
                ],
                "pageLength": 10,
                "pagination": true,
                "columnDefs": [
                    {"orderable": false, "targets": -1},
                    {"orderable": false, "targets": 0}
                ],
                initComplete: function () {
                    $('.dataTables_filter').append(
                        '@if (App\Helpers\CommonHelper::isCapable('tickets.exportXLSX'))' +
                        `{!! view('commons.button') !!}` +
                        '@endif' +

                        `{!! view('tickets.form_assign_to', compact('assignTos', 'departments')) !!}`
                    );

                    $('#btnExportXLSX').click(function () {
                        location.href = '{{ route('tickets.exportXLSX') }}' + dataTableUrl;
                    });

                    $('#formTicket #department_id').change(function () {
                        let departmentId = $(this).val();
                        $('#formTicket #assign_to').val("");
                        if (departmentId) {
                            $("option[class^='department']").hide();
                            $("option[class^='department-" + departmentId + "']").show();
                        } else {
                            $("option[class^='department']").show();
                        }
                    });
                },
                drawCallback: function () {
                    $.getScript('{{ asset('js/icheck.js') }}');
                    $('#check_all').iCheck('uncheck');
                    $('.dataTables_filter label:first').show();
                    $('#formTicket').addClass('hidden');
                }
            });

            dateRangeBtnObj.daterangepicker({
                opens: 'right',
                showDropdowns: true,
                linkedCalendars: false,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                locale: {
                    format: dateFormat
                },
                startDate: start,
                endDate: end,
            });

            // Filter the datatable on the datepicker apply event
            dateRangeBtnObj.on('apply.daterangepicker', function (ev, picker) {
                startDate = picker.startDate.format('YYYY-MM-DD');
                endDate = picker.endDate.format('YYYY-MM-DD');
            });

            $('#btnSearch').click(function () {
                ajaxRequest();
            });

            let getUrlQueries = function () {
                let ticketId = $('#ticket_id').val();
                let agentAction = $('#agent_action').val();
                let status = $('#status').val();
                let priority = $('#priority').val();
                let departmentId = $('#department_id').val();
                let createdBy = $('#created_by').val();
                let assignTo = $('#assign_to').val();

                return '?startDate=' + startDate
                    + '&endDate=' + endDate
                    + '&ticketId=' + ticketId
                    + '&agentAction=' + agentAction
                    + '&status=' + status
                    + '&priority=' + priority
                    + '&departmentId=' + departmentId
                    + '&userId=' + createdBy
                    + '&assignTo=' + assignTo;
            };

            let ajaxRequest = function () {
                dataTableUrl = getUrlQueries();
                dataTable.ajax.url('{{ route('tickets.index') }}' + dataTableUrl);
                dataTable.draw();
            };

            ajaxRequest();
        });
    </script>
@endsection
