<table class="table table-bordered">
    <thead>
    <tr>
        <th style="width: 10px">#</th>
        <th>Price Source URL</th>
        <th class="text-center">Currency Code</th>
        <th class="text-center">Action</th>
    </tr>
    </thead>
    <tbody>
    @foreach($priceSources as $index => $priceSource)
        <tr>
            <td>{{ $index + 1 }}.</td>
            <td class="text-left">{{ $priceSource->url }}</td>
            <td class="text-center">
                @if ($priceSource->prices()->first())
                    {{ $priceSource->prices()->first()->currency->code }}
                @endif
            </td>
            <td class="text-center">
                <form method="POST"
                      action="{!! route('price_sources.destroy', $priceSource->id) !!}"
                      accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}

                    <button type="button" class="btn btn-xs btn-success"
                            onclick="copyToClipboard('{{ $priceSource['url'] }}')">
                        <i aria-hidden="true" class="fa fa-clone"></i> Copy
                    </button>

                    <button type="submit" class="btn btn-xs btn-danger"
                            title="Remove Price Source URL"
                            onclick="return confirm('Delete Price Source URL?')">
                        <i aria-hidden="true" class="fa fa-trash"></i> Remove
                    </button>

                </form>
            </td>
        </tr>
    @endforeach

    @if (count($priceSources) == 0)
        <tr>
            <td colspan="3" class="text-center">No records Found</td>
        </tr>
    @endif
    </tbody>
</table>