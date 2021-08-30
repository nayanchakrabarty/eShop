<a href="#">
    <i class="fa {{ is_null($category->fa_icon) ? 'fa-circle-o' : $category->fa_icon }}"></i>
    <span class="main-title">{{ $category->title }}</span>
    <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
    </span>
</a>
