
<div class="owl-carousel header-carousel position-relative">
@foreach($slides as $slide)
    <div class="owl-carousel-item position-relative">
        <img class="img-fluid" src="{{ $slide->hero }}" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Berita</h5>
                                <h4 class="display-3 text-white animated slideInDown">{{ $slide->title }}</h4>
                                <p class="fs-5 text-white mb-4 pb-2">{{ $slide->description}}</p>
                                <a href="./berita/{{ $slide->post_id }}" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endforeach
</div>
