const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// css and js block for admin panel
// mix.js('resources/js/app.js', 'public/js').sass('resources/sass/app.scss', 'public/css').sourceMaps();

// css block for front end
// mix.sass('resources/sass/guest.scss', 'public/css').sourceMaps();
// mix.sass('resources/sass/member.scss', 'public/css').sourceMaps();
// mix.sass('resources/sass/frontend.scss', 'public/css').sourceMaps();

// mix.autoload({
//     jquery: ['$', 'window.jQuery', 'jQuery'],
// });

// frontend js
// mix.combine([
//     'resources/assets/themes/innolytic/js/jquery-min.js',
//     'resources/assets/vendor/jquery-ui.js',
//     'resources/assets/themes/innolytic/js/popper.min.js',
//     'resources/assets/themes/innolytic/js/bootstrap.min.js',
//     'resources/assets/themes/innolytic/js/owl.carousel.min.js',
//     'resources/assets/themes/innolytic/js/wow.js',
//     'resources/assets/themes/innolytic/js/jquery.nav.js',
//     'resources/assets/themes/innolytic/js/scrolling-nav.js',
//     'resources/assets/themes/innolytic/js/jquery.easing.min.js',
//     'resources/assets/themes/innolytic/js/jquery.sticky.js',
//     'resources/assets/themes/innolytic/js/form-validator.min.js',
//     'resources/assets/alertify/alertify.min.js',
//     'resources/assets/vendor/jquery-validation/dist/jquery.validate.min.js',
//     'resources/assets/vendor/select2/dist/js/select2.full.min.js',
//     'resources/assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js',
//     'resources/assets/vendor/iCheck/icheck.min.js',
//     'resources/assets/themes/innolytic/js/jquery.flipster.min.js',
//     'resources/assets/vendor/revolution/jquery.themepunch.tools.min.js',
//     'resources/assets/vendor/revolution/jquery.themepunch.revolution.min.js',
//     'resources/assets/vendor/jquery.mixitup.min.js',
//     'resources/assets/vendor/admin-lte/datatables.net/js/jquery.dataTables.min.js',
//     'resources/assets/vendor/admin-lte/datatables.net-bs/js/dataTables.bootstrap.min.js',
//     'resources/assets/themes/innolytic/js/main.js',
// ], 'public/js/member.js').sourceMaps();

// Use when sub directory inside www folder
//mix.setResourceRoot('/mobile-price/public');

// mix.js('resources/js/app.js', 'public/js')
//     .sass('resources/sass/app.scss', 'public/css').options({
//     processCssUrls: false
// });
