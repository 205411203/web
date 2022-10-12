<style>
    .dropdown-item:focus, .dropdown-item:hover {
background-color: #1C2331;
color: orange !important;}
</style>
<div class="dropdown-menu " aria-labelledby="navbarDropdownMenuLink">
@foreach($childs as $child)
<a class="dropdown-item {{ count($child->childs) ? 'dropdown-toggle' :'' }}" href="{{ url($child->slug) }}" target="_blanks">{{ $child->menu_title }}</a>
      @if(count($child->childs))
         <ul class="dropdown-menu">
             <li>
                <a class="dropdown-item" href="{{ url($child->slug) }}" style="position: absolute;" target="_blanks">
                      @include('includes.submenu',['childs' => $child->childs])
                   </a>
               </li>
           </ul>
       @endif

@endforeach
</div>
