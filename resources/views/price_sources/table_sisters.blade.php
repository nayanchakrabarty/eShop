<table class="table">
    <thead>
    <tr>
        <th style="width: 10px">#</th>
        <th>Site URL</th>
        <th style="width: 150px;">Action</th>
    </tr>
    </thead>
    <tbody>
    @foreach($sites as $site)
    <tr>
        <td>{{ $no++ }}.</td>
        <td class="text-left">{{ $site['url'] }}</td>
        <td>
            <button type="button" class="btn btn-xs btn-success" onclick="copyToClipboard('{{ $site['url'] }}')">
                <i aria-hidden="true" class="fa fa-clone"></i> Copy
            </button>

            <a href="{{ $site['url'] }}" target="_blank"
               class="btn btn-xs btn-primary"
               title="Go Link">
                <i aria-hidden="true" class="fa fa-link"></i> Go Link
            </a>
        </td>
    </tr>
    @endforeach

    @if (count($sites) == 0)
        <tr>
            <td colspan="3" class="text-center">No records Found</td>
        </tr>
    @endif
    </tbody>
</table>