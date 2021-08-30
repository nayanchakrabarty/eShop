<div class="bg-white settings-menu col-3 d-flex justify-content-center sticky-top ">
    <ul class="text-left d-flex flex-column">
        <li class="filter tran3s nav-item {{Request::routeIs('members.settings.profile') ? 'active':''}}">
            <a class="nav-link p-0" href="{{ route('members.settings.profile') }}">
                Profile
            </a>
        </li>
        <li class="filter tran3s nav-item {{Request::routeIs('members.settings.changepassword') ? 'active':''}}">
            <a class="nav-link p-0" href="{{ route('members.settings.changepassword') }}">
                Change Password
            </a>
        </li>
        <li class="filter tran3s nav-item {{Request::routeIs('members.settings.mystores') ? 'active':''}}">
            <a class="nav-link p-0" href="{{ route('members.settings.mystores') }}">
                My stores
            </a>
        </li>
        <li class="filter tran3s nav-item  {{Request::routeIs('members.settings.orders') ? 'active':''}}">
            <a class="nav-link p-0" href="{{ route('members.settings.orders') }}">
                My Orders
            </a>
        </li>
    </ul>
</div>