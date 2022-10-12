    
    <!-- Agenda Start -->
   
        <div class="container">
            <div class="text-center">
                <h3 class="section-title bg-white text-center text-primary px-3">Agenda</h3>
                <h5>Kegiatan</h5>
            </div>
           
            <div class="owl-carousel testimonial-carousel position-relative"> 
            @foreach($events as $event)            
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="{{ asset('theme2/img/course-2.jpg') }}" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">{{$event->title}}</h5>
                    <p>{{ date('d-m-Y', strtotime($event->start_date)) }} s.d. {{ date('d-m-Y', strtotime($event->end_date)) }}</p>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0">{{$event->description}}</p>
                    </div>
                </div>
                @endforeach
            </div>
           
            
        </div>
 
    <!-- Agenda End -->

    