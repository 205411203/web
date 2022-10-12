<!doctype html>
    <html>
       @include('includes.head')
    <body>
          @include('includes.navbar')
       <div class="container-fluid p-0 mb-5">
            @include('includes.slides')
            
        </div>
        @include('includes.news')
        <div class="container-xxl py-3">
            @include('includes.service')
        </div>
        <div class="container-xxl py-5">
            @include('includes.about')
        </div>
        <div class="container-xxl py-5 category">
            @include('includes.categories')
        </div>
     <div class="container-xxl py-5">
            @include('includes.wilker')
        </div>

        <div class="container-xl py-5">
            @include('includes.team')
        </div>
        <div class="container-xl py-5">
            @include('includes.banner')
        </div>
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            @include('includes.pj')
        </div>
       <div id="main" class="row">
            @yield('content')
       </div>
       </div>
       <footer class="row">
           @include('includes.footer')
       </footer>
       
    </body>
</html>