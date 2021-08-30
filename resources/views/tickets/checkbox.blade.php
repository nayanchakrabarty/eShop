<div class="icheck-flat-blue">
    <label for="item_{{ $ticket->id }}">
        <input id="item_{{ $ticket->id }}" name="ticketIds[]" form="formTicket"
               type="checkbox" class="singleItem"
               value="{{ $ticket->id }}">
    </label>
</div>
