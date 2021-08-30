<ul class="nav nav-tabs">
    @foreach($mapPrices as $currency => $priceList)
        <li class="{{ $activeCurrency == $currency ? 'active': '' }}">
            <a href="#{{ $currency }}" data-toggle="tab"
               aria-expanded="{{ $activeCurrency == $currency ? true : false }}">
                {{ $currency }}
            </a>
        </li>
    @endforeach
</ul>
<div class="tab-content">
    @foreach($mapPrices as $currency => $priceList)
        <div class="tab-pane {{ $activeCurrency == $currency ? 'active': '' }}" id="{{ $currency }}">
            <table class="table">
                <thead>
                <tr>
                    <th style="width: 10px">#</th>
                    <th class="text-left">Title</th>
                    <th class="text-right">Price</th>
                </tr>
                </thead>
                <tbody>
                @foreach($priceList as $serial => $priceLine)
                    <tr>
                        <td>{{ $serial + 1 }}.</td>
                        <td class="text-left">{{ $priceLine['title'] }}</td>
                        <td class="text-right">{{ $currency }} {{ $priceLine['price'] }}</td>
                    </tr>
                @endforeach

                @if (count($priceList) == 0)
                    <tr>
                        <td colspan="3" class="text-center">No records Found</td>
                    </tr>
                @endif
                </tbody>
            </table>

        </div>
    @endforeach
</div>
<!-- /.tab-content -->
