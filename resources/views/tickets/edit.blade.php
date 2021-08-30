@extends('layouts.app')

@section('content-header')
    <h1>Edit Ticket</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('tickets.index') }}">
                <i class="fa fa-dashboard"></i> Tickets
            </a>
        </li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ !empty($ticket->subject) ? ucfirst($ticket->subject) : 'Ticket' }}
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('tickets.index') }}" class="btn btn-sm btn-info"
                   title="Show All Ticket">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>

                <a href="{{ route('tickets.create') }}" class="btn btn-sm btn-success"
                   title="Create New Ticket">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST"
              action="{{ route('tickets.update', $ticket->id) }}"
              accept-charset="UTF-8" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input name="_method" type="hidden" value="PUT">
            <div class="box-body">

                @if ($errors->any())
                    <ul class="alert alert-danger">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif

                @include ('tickets.form', ['ticket' => $ticket,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Update</button>
            </div>
        </form>

    </div>

@endsection
