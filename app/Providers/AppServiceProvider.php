<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Models\Setting;
use Config;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // set default string length
        Schema::defaultStringLength(191);

        // Set settings detail
        if (Schema::hasTable('settings')) {
            foreach (Setting::all() as $setting) {
                Config::set('settings.'.$setting->constant, $setting->value);
            }
        }

        $this->bootEnvatoSocialite();
    }

    private function bootEnvatoSocialite()
    {
        $socialite = $this->app->make('Laravel\Socialite\Contracts\Factory');
        $socialite->extend(
            'envato',
            function ($app) use ($socialite) {
                $config = $app['config']['services.envato'];
                return $socialite->buildProvider(EnvatoServiceProvider::class, $config);
            }
        );
    }
}
