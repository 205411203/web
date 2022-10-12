<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
    <!-- Spinner End -->

    <!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-light navbar-light shadow sticky-top p-0">
    <div class='container'>
   <a href="{{ url('/') }}" class="navbar-brand d-flex align-items-center">
        <img src="{{$setting['hero']}}" class="img-fluid ml-auto" />
    <!--</i>Karantina Yogya</h2>-->
    </a>
</div>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
    </button> 

    <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ms-auto p-4 p-lg-0">
            @foreach($menus as $menu)
            <li class="nav-item dropdown">
                <a class="nav-link {{ count($menu->childs) ? 'dropdown-toggle' :'' }}" href="{{ url($menu->slug) }}" target="_blanks" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   {{ $menu->menu_title }}
                </a>
               
                  @if(count($menu->childs))
                    @include('includes.submenu',['childs' => $menu->childs])
                  @endif
               
            </li>
            @endforeach
        </ul>
    </div>
        <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block"><i class="fa fa-arrow-right ms-3"></i></a>
    </div>
</nav>
   
    <!-- Navbar End -->