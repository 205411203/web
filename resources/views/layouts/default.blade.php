<!doctype html>
    <html>
    <head>
       @include('includes.head')
    </head>
    <body>
       <header class="row">
           @include('includes.navbar')
       </header>
       <div id="main" class="row">
            @yield('content')
       </div>
       <footer class="row">
           @include('includes.footer')
       </footer>
       
    </body>
</html>