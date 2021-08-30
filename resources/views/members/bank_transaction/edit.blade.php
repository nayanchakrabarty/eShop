<form method="POST"
      action="{{ route('members.bankTransaction.update', $bankTransaction->id) }}"
      enctype="multipart/form-data">

    {{ csrf_field() }}

    <input name="_method" type="hidden" value="PUT">

    @include('members.bank_transaction.form')

    <div class="form-group row">
        <div class="col-sm-9 offset-3">
            @if(!empty($bankTransaction->media_id))
                <a href="{{ route('downloads.downloadAttachment', $bankTransaction->media_id) }}">
                    <i class="fa fa-2x fa-paperclip border p-1"></i>
                </a>
            @endif
            <button type="submit" class="btn btn-primary btn-flat pull-right">Update</button>
        </div>
    </div>
</form>

<script src="{{ asset('js/common.js') }}"></script>
