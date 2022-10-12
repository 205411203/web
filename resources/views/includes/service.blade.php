  <!-- Service Start -->
         <div class="container">
         <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Unit Kerja</h6>
                <h3 class="mb-5">Unit Layanan</h3>
            </div>
            <div class="row g-4">
            @foreach($services as $service)
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <a href="./service/{{ $service->service_id }}" target="_blanks">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x {{$service->icon}} text-primary mb-4"></i>
                            <h5 class="mb-3">{{$service->title}}</h5>
                            <p>{{$service->description}}</p>
                        </div>
                    </div>
                    </a>
                </div>   
            @endforeach                    
            </div>
        </div>

    <!-- Service End -->