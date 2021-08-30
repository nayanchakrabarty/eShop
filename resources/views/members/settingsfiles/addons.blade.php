<div class="container">
    <div class="col-md-12">
        <div class="d-flex justify-content-between">
            <h6>
                <span class="info-box-text">{{$addons->package_code}}</span>
            </h6>
            <h6 class="text-primary">
                <span class="info-box-text">Store Name : {{$store->domain_name}}</span>
            </h6>
        </div>
        @if(($addons->packageOptions)->isEmpty())
        <h6 class="p-4 text-center">No addon is available for this package</h6>
        @else
        <form action="{{ route('members.checkout') }}">
            <input type="hidden" name="subscription_type" value="addon">
            <input type="hidden" class="package_info" name="package_info" value="{{$addons->package_code}}">
            <input type="hidden" class="option_ids" name="option_ids" value="">
            <input type="hidden" class="store_id" name="store_id" value="{{$store->id}}">
            <input type="hidden" class="checkout_total_price" name="package_total_price">
            <table class="table table-borderless table-hover table-md choose_addon_table">
                <thead class="thead-light">
                    <tr>
                        <th></th>
                        <th>Name</th>
                        <th class="text-right">
                            Price
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($addons->packageOptions as $addon)
                    <tr>
                        <td class="text-center">
                            <input type="checkbox" id="addon_{{$addon->id}}" option_id="{{$addon->id}}"
                                price="{{$addon->price}}" class="flat-red" style="vertical-align: middle;">
                        </td>
                        <td>
                            <label for="addon_{{$addon->id}}">{{$addon->title}} ({{number_format($addon->price)}}
                                BDT)</label>
                        </td>
                        <td class="text-right option_price_{{$addon->id}}">
                            {{number_format(0)}}
                        </td>
                    </tr>
                    @endforeach
                    <tr>
                        <td colspan="2" class="text-right">Total</td>
                        <td class="text-right table_total_price">{{number_format(0)}}</td>
                    </tr>
                </tbody>
            </table>
            <div class="buy-now-button">
                <button class="btn btn-primary btn-flat float-right add-addons-btn" disabled type="submit">Buy
                    Now</button>
            </div>
        </form>
        @endif
    </div>
</div>