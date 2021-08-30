@extends('layouts.pdf')

@section('content')
    <h3 class="pdf-title">Ticket Details</h3>
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
                    <img src="{{ $_SERVER['DOCUMENT_ROOT'] . '/storage/' . $ticket->attachment_image }}"
                         alt="Attachment Image" class="thumbnail medium" />
                @endif
            </td>
        </tr>
        <tr>
            <th>Message</th>
            <td>{!! $ticket->message !!}</td>
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

@endsection
