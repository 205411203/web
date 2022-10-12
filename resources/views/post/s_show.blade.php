<style>
.berita {
  margin-top:10px;
  margin-bottom:10px;
}
</style>
@extends('pages.pages')
@section('content')
<div class="container-xxl py-5 p-5">
<div class="card">
@foreach($service as $service)
<div class="card-body">
    <h3 class="card-title" style="text-align: center;">{{ $service->title }}</h3>
    <p ><span class="badge rounded-pill bg-info">{{ date('d-m-Y', strtotime($service->published_at)) }}</span></p> 
    <p>{{ $service->user_name }}</p>
    <div>
        
    </div>
    <div class="berita">
    <img class="img-fluid mb-3" src="{{$service->hero}}" class="d-block w-100" alt="..."> 
     {!! $service->body!!}
</div>       
  </div>
  @endforeach
</div>

</div>
@stop