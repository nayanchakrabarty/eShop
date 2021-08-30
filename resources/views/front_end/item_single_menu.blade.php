<li {{ $selectedCategoryId == $category->id ? 'class=active' : '' }}>
    <a href="{{ route('home.helpCenter', [$productId, $category->id] ) }}">
        <i class="fa {{ is_null($category->fa_icon) ? 'fa-circle-o' : $category->fa_icon }}"></i>
        <span>{{ $category->title }}</span>
    </a>
</li>
