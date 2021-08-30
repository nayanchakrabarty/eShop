@extends('layouts.app')

@section('content-header')
    <h1>Ticket Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('tickets.index') }}">
                <i class="fa fa-dashboard"></i> Tickets
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($ticket->subject) ? ucfirst($ticket->subject) : 'Ticket' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                      action="{!! route('tickets.destroy', $ticket->id) !!}"
                      accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}

                    @if (App\Helpers\CommonHelper::isCapable('tickets.index'))
                        <a href="{{ route('tickets.index') }}" class="btn btn-sm btn-info" title="Show All Ticket">
                            <i class="fa fa-th-list" aria-hidden="true"></i>
                        </a>
                    @endif

                    @if (App\Helpers\CommonHelper::isCapable('tickets.printDetails'))
                        <a href="{{ route('tickets.printDetails', $ticket->id) }}" class="btn btn-sm btn-warning"
                           title="Print Details">
                            <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
                        </a>
                    @endif

                    @if (App\Helpers\CommonHelper::isCapable('tickets.create'))
                        <a href="{{ route('tickets.create') }}" class="btn btn-sm btn-success"
                           title="Create New Ticket">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </a>
                    @endif

                    @if (App\Helpers\CommonHelper::isCapable('tickets.edit'))
                        <a href="{{ route('tickets.edit', $ticket->id ) }}"
                           class="btn btn-sm btn-primary" title="Edit Ticket">
                            <i aria-hidden="true" class="fa fa-pencil"></i>
                        </a>
                    @endif

                    @if (App\Helpers\CommonHelper::isCapable('tickets.destroy'))
                        <button type="submit" class="btn btn-sm btn-danger"
                                title="Delete Ticket"
                                onclick="return confirm('Delete Ticket?')">
                            <i aria-hidden="true" class="fa fa-trash"></i>
                        </button>
                    @endif

                </form>

            </div>
        </div>

        <div class="box-body">
            <div class="table-responsive">
                <table class="table table-bordered table-show">
                    <tbody>
                    <tr>
                        <th>Subject</th>
                        <td>{{ $ticket->subject }}</td>
                    </tr>
                    <tr>
                        <th>Created By</th>
                        <td>{{ optional($ticket->creator)->name }}</td>
                    </tr>
                    <tr>
                        <th>Department</th>
                        <td>{{ optional($ticket->department)->name }}</td>
                    </tr>
                    <tr>
                        <th>Priority</th>
                        <td>{{ $ticket->priority }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $ticket->status }}</td>
                    </tr>
                    <tr>
                        <th>Assign To</th>
                        <td>{{ optional($ticket->assignTo)->name }}</td>
                    </tr>
                    <tr>
                        <th>Attachment Image</th>
                        <td>
                            @if (!empty($ticket->attachment_image))
                                <img src="{{ asset('storage/' . $ticket->attachment_image) }}"
                                     alt="Attachment Image" class="thumbnail medium"/>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Message</th>
                        <td>{{ $ticket->message }}</td>
                    </tr>
                    <tr>
                        <th>Customer Action</th>
                        <td>{{ $ticket->customer_action }}</td>
                    </tr>
                    <tr>
                        <th>Agent Action</th>
                        <td>{{ $ticket->agent_action }}</td>
                    </tr>
                    <tr>
                        <th>Created At</th>
                        <td>{{ $ticket->created_at }}</td>
                    </tr>
                    <tr>
                        <th>Updated At</th>
                        <td>{{ $ticket->updated_at }}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
