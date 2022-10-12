  <!-- Service Start -->
         <div class="container">
            <div class="row g-4">
            @foreach($services as $service)
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <a href="#">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                            <h5 class="mb-3">{{$service->title}}</h5>
                            <p>{{$service->description}}</p>
                        </div>
                    </div>
                    </a>
                </div>
                
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <a href="#">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                            <h5 class="mb-3">Karantina Tumbuhan</h5>
                            <p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam</p>
                        </div>
                    </div>
                </a>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                <a href="#">
                    <div class="service-item text-center pt-3">
                        <div class="p-4" >
                            <i class="fa fa-3x fa-home text-primary mb-4"></i>
                            <h5 class="mb-3">Laboratorium</h5>
                            <p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam</p>
                        </div>
                    </div>
                </a>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                <a href="#">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3">Tata Usaha</h5>
                            <p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam</p>
                        </div>
                    </div>
                </a>
                </div>
                
            </div>
        </div>

    <!-- Service End -->