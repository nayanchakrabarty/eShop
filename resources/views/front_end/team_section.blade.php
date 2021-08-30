<!-- Team Section Start -->
@if (config('settings.IS_DISPLAY_OUR_SUPPORT_TEAM'))
    <section id="teams" class="section-padding">
        <div class="container">
            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                    {{ config('settings.OUR_SUPPORT_TEAM_HEADER_TITLE') }}
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>
            <div class="row">

                @foreach($users as $user)
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-team-member wow fadeInRight" data-wow-delay="0.2s">
                            <div class="team-member-img">
                                <img src="{{ asset('storage/profiles/' . optional($user->uploadedFile)->filename) }}"
                                     alt="team">
                                <div class="team-member-icon">
                                    <div class="display-table">
                                        <div class="display-table-cell">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member-info">
                                <a href="#"><h4>{{ $user->name }}</h4></a>
                                <p>{{ $user->designation }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
@endif
