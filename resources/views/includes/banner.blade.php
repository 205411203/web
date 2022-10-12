
<div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h3 class="section-title bg-white text-center text-primary px-3 mb-3">Link Penting</h3>
            </div>
            <div class="row g-3">
                @foreach($banners as $banner)
                    <div class="col-lg-3 col-md-4 col-xs-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a href = "http://{{ $banner->link }}" target="_blank"  >
                            <img  src="{{$banner->hero}}" class="img-fluid img-thumbnail rounded mx-auto d-block" alt="{{$banner->title}}" title="{{$banner->title}}"> 
                        </a>
                </div>
                @endforeach
            </div>
</div>


