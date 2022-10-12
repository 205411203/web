    
    <!-- Categories Start -->
           <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Layanan</h6>
                <h1 class="mb-5">Layanan Karantina</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-12 col-md-12">
                    <div class="row g-4">
                    @foreach($services->take(4) as $service)
                    @if(($loop->iteration) == 1)
                        <div class="col-lg-4 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden" href="./service/{{ $service->service_id }}" target="_blanks">
                                <img class="img-fluid" style="height:100" src="{{ $service->hero }}" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h6 class="m-0 text-primary">{{ $service->title }}</h6>
                                 
                                </div>
                            </a>
                        </div>
                      @elseif (($loop->iteration) == 2)
                        <div class="col-lg-4 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden" href="./service/{{ $service->service_id }}" target="_blanks">
                                <img class="img-fluid" src="{{ $service->hero }}" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h6 class="m-0 text-primary">{{ $service->title }}</h6>
                                
                                </div>
                            </a>
                        </div>
                        @elseif (($loop->iteration) == 3)
                        <div class="col-lg-4 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                            <a class="position-relative d-block overflow-hidden" href="./service/{{ $service->service_id }}" target="_blanks">
                                <img class="img-fluid" src="{{ $service->hero }}" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                <h6 class="m-0 text-primary">{{ $service->title }}</h6>
                             
                                </div>
                            </a>
                        </div>
                        @else
                        <div class="col-lg-3 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                            <a class="position-relative d-block overflow-hidden" href="./service/{{ $service->service_id }}" target="_blanks">
                                <img class="img-fluid " src="{{ $service->hero }}" alt="" style="object-fit: cover;">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin:  1px;">
                                <h6 class="m-0 text-primary">{{ $service->title }}</h6>
                         
                                </div>
                            </a>
                        </div>
                        @endif
                        @endforeach
                    </div>
                </div>  
            </div>
        </div> 
    
  
    <!-- Categories Start -->