<section id="pricing" class="section-padding bg-gray">
    <div class="">
        <div class="section-header text-center">
            <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">Packages</h2>
            <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
        </div>

        <div class="row">
            <div class="col-12">
                <ul class="nav nav-pills justify-content-center m-auto package-menu">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#monthly" role="tab"
                            aria-controls="pills-monthly" aria-selected="true">Monthly</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#yearly" role="tab" aria-controls="pills-yearly"
                            aria-selected="false">Yearly</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#lifetime" role="tab"
                            aria-controls="pills-lifetime" aria-selected="false">Lifetime</a>
                    </li>
                </ul>

                <div class="tab-content mt-3 bg-gray">
                    <div class="tab-pane fade show active" id="monthly" role="tabpanel" aria-labelledby="monthly-tab">
                        <section class="price-area pt-4" id="pricing">
                            <div class="container">
                                <div class="row">
                                    @foreach ($monthly_packages as $monthly_package)
                                    @php
                                    $monthly_required_price = 0;
                                    foreach ($monthly_package->packageOptions()->get() as $options) {
                                    if($options->type == "required")
                                    {
                                    $monthly_required_price+=$options->price;
                                    }
                                    }
                                    @endphp
                                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                                        <div class="single-price package_wrapper center wow fadeInUp"
                                            data-wow-delay="0.2s">
                                            <div class="price-hidding">
                                                <h3>{{$monthly_package->title}}</h3>
                                                <p>The best to start</p>
                                            </div>
                                            <div class="price-rate white">
                                                <h2 class="text-white">
                                                    BDT <span class="total_price_{{$monthly_package->package_code}}"
                                                        style="font-size:30px;">{{ number_format($monthly_package->base_price+$monthly_required_price) }}
                                                    </span>
                                                    <span>
                                                        / {{$monthly_package->availability}}
                                                    </span></h2>
                                            </div>
                                            <form action="{{ route('members.checkout') }}">
                                                <div class="price-details" style="height:250px">
                                                    <input type="hidden" name="subscription_type"
                                                        value="{{$monthly_package->package_code}}">
                                                    <input type="hidden" class="package_info" name="package_info"
                                                        value="">
                                                    <input type="hidden"
                                                        class="{{$monthly_package->package_code}}_checkout_total"
                                                        name="package_total_price"
                                                        value="{{$monthly_package->base_price+$monthly_required_price}}">
                                                    <ul>
                                                        @php
                                                        $monthly_package_options=$monthly_package->packageOptions()->get();
                                                        @endphp
                                                        @foreach($monthly_package_options as $package_option)
                                                        @if($package_option->type == "optional")
                                                        <li>
                                                            <input type="checkbox"
                                                                package_code="{{$package_option->package->package_code}}"
                                                                price="{{$package_option->price}}" class="flat-red"
                                                                option_id="{{$package_option->id}}"
                                                                style="vertical-align: middle;">
                                                            <span>
                                                                {{$package_option->title}}(BDT
                                                                {{number_format($package_option->price)}})
                                                            </span>
                                                        </li>
                                                        @else
                                                        <li>{{$package_option->title}}</li>
                                                        @endif

                                                        @endforeach
                                                    </ul>
                                                </div>
                                                <div class="buy-now-button">
                                                    <button class="btn btn-primary btn-flat" type="submit">Buy
                                                        Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="tab-pane fade" id="yearly" role="tabpanel" aria-labelledby="yearly-tab">
                        <section class="price-area pt-4" id="pricing">
                            <div class="container">
                                <div class="row">
                                    @foreach ($yearly_packages as $yearly_package)
                                    @php
                                    $yearly_required_price = 0;
                                    foreach ($yearly_package->packageOptions()->get() as $options) {
                                    if($options->type == "required")
                                    {
                                    $yearly_required_price+=$options->price;
                                    }
                                    }
                                    @endphp
                                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                                        <div class="single-price package_wrapper center wow fadeInUp"
                                            data-wow-delay="0.2s">
                                            <div class="price-hidding">
                                                <h3>{{$yearly_package->title}}</h3>
                                                <p>Long Runner</p>
                                            </div>
                                            <div class="price-rate white">
                                                <h2 class="text-white">
                                                    BDT <span class="total_price_{{$yearly_package->package_code}}"
                                                        style="font-size:30px;">{{ number_format($yearly_package->base_price+$yearly_required_price) }}
                                                    </span>
                                                    <span>
                                                        / {{$yearly_package->availability}}
                                                    </span></h2>
                                            </div>
                                            <form action="{{ route('members.checkout') }}">
                                                <div class="price-details" style="height:250px">
                                                    <input type="hidden" name="subscription_type"
                                                        value="{{$yearly_package->package_code}}">
                                                    <input type="hidden" class="package_info" name="package_info"
                                                        value="">
                                                    <input type="hidden"
                                                        class="{{$yearly_package->package_code}}_checkout_total"
                                                        name="package_total_price"
                                                        value="{{$yearly_package->base_price+$yearly_required_price}}">
                                                    <ul>
                                                        @php
                                                        $yearly_package_options=$yearly_package->packageOptions()->get();
                                                        @endphp
                                                        @foreach($yearly_package_options as $package_option)
                                                        @if($package_option->type == "optional")
                                                        <li>
                                                            <input type="checkbox"
                                                                package_code="{{$package_option->package->package_code}}"
                                                                price="{{$package_option->price}}" class="flat-red"
                                                                option_id="{{$package_option->id}}"
                                                                style="vertical-align: middle;">
                                                            <span>
                                                                {{$package_option->title}}(BDT
                                                                {{number_format($package_option->price)}})
                                                            </span>
                                                        </li>
                                                        @else
                                                        <li>{{$package_option->title}}</li>
                                                        @endif

                                                        @endforeach
                                                    </ul>
                                                </div>
                                                <div class="buy-now-button">
                                                    <button class="btn btn-primary btn-flat" type="submit">Buy
                                                        Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="tab-pane fade" id="lifetime" role="tabpanel" aria-labelledby="lifetime-tab">
                        <section class="price-area pt-4" id="pricing">
                            <div class="container">
                                <div class="row">
                                    @foreach ($lifetime_packages as $lifetime_package)
                                    @php
                                    $lifetime_required_price = 0;
                                    foreach ($lifetime_package->packageOptions()->get() as $options) {
                                    if($options->type == "required")
                                    {
                                    $lifetime_required_price+=$options->price;
                                    }
                                    }
                                    @endphp
                                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                                        <div class="single-price package_wrapper center wow fadeInUp"
                                            data-wow-delay="0.2s">
                                            <div class="price-hidding">
                                                <h3>{{$lifetime_package->title}}</h3>
                                                <p>Lifetime Deal</p>
                                            </div>
                                            <div class="price-rate white">
                                                <h2 class="text-white">
                                                    BDT <span class="total_price_{{$lifetime_package->package_code}}"
                                                        style="font-size:30px;">{{ number_format($lifetime_package->base_price+$lifetime_required_price) }}
                                                    </span>
                                                    <span>
                                                        / {{$lifetime_package->availability}}
                                                    </span></h2>
                                            </div>
                                            <form action="{{ route('members.checkout') }}">
                                                <div class="price-details" style="height:250px">
                                                    <input type="hidden" name="subscription_type"
                                                        value="{{$lifetime_package->package_code}}">
                                                    <input type="hidden" class="package_info" name="package_info"
                                                        value="">
                                                    <input type="hidden"
                                                        class="{{$lifetime_package->package_code}}_checkout_total"
                                                        name="package_total_price"
                                                        value="{{$lifetime_package->base_price+$lifetime_required_price}}">
                                                    <ul>
                                                        @php
                                                        $lifetime_package_options=$lifetime_package->packageOptions()->get();
                                                        @endphp
                                                        @foreach($lifetime_package_options as $package_option)
                                                        @if($package_option->type == "optional")
                                                        <li>
                                                            <input type="checkbox"
                                                                package_code="{{$package_option->package->package_code}}"
                                                                price="{{$package_option->price}}" class="flat-red"
                                                                option_id="{{$package_option->id}}"
                                                                style="vertical-align: middle;">
                                                            <span>
                                                                {{$package_option->title}}(BDT
                                                                {{number_format($package_option->price)}})
                                                            </span>
                                                        </li>
                                                        @else
                                                        <li>{{$package_option->title}}</li>
                                                        @endif

                                                        @endforeach
                                                    </ul>
                                                </div>
                                                <div class="buy-now-button">
                                                    <button class="btn btn-primary btn-flat" type="submit">Buy
                                                        Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>

        </div>
</section>