@if (Auth::user()->hasRole('Agent') && empty($ticket->assign_to))

    @if (App\Helpers\CommonHelper::isCapable('tickets.storePickMe'))
        <form method="POST" action="{{ route('tickets.storePickMe', $ticket->id ) }}">
            <input name="_method" value="PUT" type="hidden">
            {{ csrf_field() }}

            <button type="submit" class="btn btn-xs bg-gray"
                    title="Pick for Me"
                    onclick="return confirm('Really want to pick for you?')">
                <i aria-hidden="true" class="fa fa-get-pocket"></i>
            </button>
        </form>
    @endif

@else

    <form method="POST" action="{!! route('tickets.destroy', $ticket->id) !!}">
        <input name="_method" value="DELETE" type="hidden">
        {{ csrf_field() }}

        @if (App\Helpers\CommonHelper::isCapable('tickets.comments'))
            <a href="{{ route('tickets.comments', $ticket->id ) }}"
               class="btn btn-xs btn-warning" title="Show Ticket Comments">
                <i aria-hidden="true" class="fa fa-comments"></i>
            </a>
        @endif

        @if (App\Helpers\CommonHelper::isCapable('tickets.show'))
            <a href="{{ route('tickets.show', $ticket->id ) }}"
               class="btn btn-xs btn-info" title="Show Ticket">
                <i aria-hidden="true" class="fa fa-eye"></i>
            </a>
        @endif

        @if (App\Helpers\CommonHelper::isCapable('tickets.edit'))
            <a href="{{ route('tickets.edit', $ticket->id ) }}"
               class="btn btn-xs btn-primary" title="Edit Ticket">
                <i aria-hidden="true" class="fa fa-pencil"></i>
            </a>
        @endif

        @if (App\Helpers\CommonHelper::isCapable('tickets.destroy'))
            <button type="submit" class="btn btn-xs btn-danger"
                    title="Delete Ticket"
                    onclick="return confirm('Delete Ticket?')">
                <i aria-hidden="true" class="fa fa-trash"></i>
            </button>
        @endif
    </form>

@endif

