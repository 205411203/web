<style>
.carousel-inner {
  padding: 1em;
}
.card {
  margin: 0 0.5em;
  box-shadow: 2px 6px 8px 0 rgba(22, 22, 26, 0.18);
  border: none;
}
.carousel-control-prev,
.carousel-control-next {
  background-color: #e1e1e1;
  width: 6vh;
  height: 6vh;
  border-radius: 50%;
  top: 50%;
  transform: translateY(-50%);
}
@media (min-width: 768px) {
  .carousel-item {
    margin-right: 0;
    flex: 0 0 33.333333%;
    display: block;
  }
  .carousel-inner {
    display: flex;
  }
}
.card .img-wrapper {
    max-width: 100%;
    height: 13em;
    display: flex;
    justify-content: center;
    align-items: center;
}
.card img {
    max-height: 100%;
}
@media (max-width: 767px) {
  .card .img-wrapper {
    height: 17em;
  }
}
.news{width: 160px}
.news-scroll a{text-decoration: none}.dot{height: 6px;width: 6px;margin-left: 3px;margin-right: 3px;margin-top: 2px !important;background-color: rgb(207,23,23);border-radius: 50%;display: inline-block}


</style>

<div class="container">
        <div class="col-md-12">
            <div class="d-flex justify-content-between align-items-center breaking-news bg-secondary">
                <div class="d-flex flex-row flex-grow-1 flex-fill justify-content-center bg-danger py-2 text-white px-1 news"><span class="d-flex align-items-center">&nbsp;Pengumuman</span></div>
               
                <marquee class="news-scroll" behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();"> @foreach($tickers as $ticker)<a href="#" class="text-white text-bold"> 
                    {{ $ticker->news_title }} </a> : <a class="text-info"> {{ $ticker->content }}</a>@endforeach
                </marquee>
                
            </div>
        </div>
</div>


<div class="container my-5">
<h2> Berita Terkini</h2>
<a href="#" class="btn-sm rounded-pill btn-primary float-right">Berita lainnya</a>
<div id="carouselExampleControls" class="carousel" data-bs-ride="carousel">
    <div class="carousel-inner">
    @foreach($posts as $post)
        <div class="carousel-item {{$loop->iteration == 1 ? 'active' : ''}}">
            <div class="card">
                <div class="img-wrapper">
                  <img src="{{ $post->hero }}" class="d-block w-100" alt="..."> 
                </div>
                <div class="card-body">
                    <h5 class="card-title">{{ $post->title }}</h5>
                    <p><span class="badge rounded-pill bg-info">{{ date('d-m-Y', strtotime($post->published_at)) }}</span> 
                    <span class="badge rounded-pill bg-secondary"> {{ $post->user_name   }}</span>
                    </p>
                    <p class="card-text">{!! \Illuminate\Support\Str::words($post->body, 25, '  ...') !!}</p>         
                    <a href="./berita/{{ $post->slug }}" class="btn-sm rounded-pill btn-primary">Selengkapnya</a>
                </div>
            </div>
        </div>
       
        @endforeach
       
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
</div>
<hr>
