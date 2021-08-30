<!-- Article Section Start -->
@if (config('settings.IS_DISPLAY_ARTICLE_HOME'))
    <section id="documents" class="section-padding">
        <div class="container">
            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                    {{ $defaultProduct->title }} Documentation
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    {!! $articleListWithCategoryTree !!}
                </div>
            </div>
        </div>
    </section>
@endif
