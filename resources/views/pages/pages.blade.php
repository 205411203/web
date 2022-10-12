<!doctype html>
    <html>
    <head>
       @include('includes.head')
    </head>
    <body>
          @include('includes.navbar')
           @include('includes.header')
       <div id="main" class="row">
            @yield('content')
       </div>
       </div>
       <footer class="row">
           @include('includes.footer')
           <script src="{{ asset('theme2/js/masonry.pkgd.min.js') }}"></script>
       </footer>
       
    </body>
</html>