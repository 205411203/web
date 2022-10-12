 <!-- Footer Start -->
 <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Link Menu</h4>
                    @foreach($menus as $menu)
                        <a class="btn btn-link" href="{{ $menu->slug }}" traget="_blanks"> {{ $menu->menu_title }}</a>
                    @endforeach
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Hubungi kami</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>{{ $setting->alamat }}</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>{{ $setting->telp }}</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>{{ $setting->email }}</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="{{ $setting->twitter }}"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href="{{ $setting->facebook }}"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href="{{ $setting->youtube }}"><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href="{{ $setting->instagram }}"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a href="/berita.indeks" target="_blanks"><h4 class="text-white mb-3">Dokumentasi</h4></a>
                    <div class="row g-2 pt-2">
                        @foreach($posts as $post)
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="{{ $post->hero }}" alt="">
                        </div>
                        @endforeach
                    </div>
                </div>
                
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a>Karantina Pertanian Yogyakarta</a>,  2022.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a><br><br>
                        Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>-->
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
     <!-- Back to Top -->
     <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
     <!-- JavaScript Libraries -->
     <script src="{{ asset('theme2/js/jquery-3.6.0.min.js') }}"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('theme2/lib/wow/wow.min.js') }}"></script>
    <script src="{{ asset('theme2/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('theme2/lib/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('theme2/lib/owlcarousel/owl.carousel.min.js') }}"></script>
   
    <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" ></script>


    <!-- Template Javascript -->
    <script src="{{ asset('theme2/js/main.js') }}"></script>

    <script type="text/javascript">

        $(document).on('click', '.dropdown-menu', ($event) => $event.stopPropagation());
        if ($(window).width() < 992) {
            $('.dropdown-menu a').click(($event) => {
                $event.preventDefault();
                if ($(this).next('.submenu').length) {
                    $(this).next('.submenu').toggle();
                }
                $('.dropdown').on('hide.bs.dropdown', () => $(this).find('.submenu').hide());
            });
        };

        $(document).ready(function() {
            $('.carousel').carousel();
  });
  var multipleCardCarousel = document.querySelector(
  "#carouselExampleControls"
);
if (window.matchMedia("(min-width: 768px)").matches) {
  var carousel = new bootstrap.Carousel(multipleCardCarousel, {
    interval: false,
  });
  var carouselWidth = $(".carousel-inner")[0].scrollWidth;
  var cardWidth = $(".carousel-item").width();
  var scrollPosition = 0;
  $("#carouselExampleControls .carousel-control-next").on("click", function () {
    if (scrollPosition < carouselWidth - cardWidth * 4) {
      scrollPosition += cardWidth;
      $("#carouselExampleControls .carousel-inner").animate(
        { scrollLeft: scrollPosition },
        600
      );
    }
  });

  $("#carouselExampleControls .carousel-control-prev").on("click", function () {
        if (scrollPosition > 0) {
            scrollPosition -= cardWidth;
            $("#carouselExampleControls .carousel-inner").animate(
                { scrollLeft: scrollPosition },
                600
            );
            }
            });
         } else {
            $(multipleCardCarousel).addClass("slide");
    }

   
      
    </script>
  
