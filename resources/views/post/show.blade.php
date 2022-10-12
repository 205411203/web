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
@foreach($berita as $berita)
<div class="card-body">
    <h3 class="card-title" style="text-align: center;">{{ $berita->title }}</h3>
    <p ><span class="badge rounded-pill bg-info">{{ date('d-m-Y', strtotime($berita->published_at)) }}</span></p> 
    <p>{{ $berita->user_name }}</p>
    <div>
        
    </div>
    <div class="berita">
    <img class="img-fluid mb-3" src="{{ $berita->hero }}" class="d-block w-100" alt="..."> 
     {!! $berita->body!!}
</div>       
  </div>
  @endforeach
</div>
<div class='card'>
  <h5 class="p-2" >Artikel Lainnya</h5>
<div class="list-group">
  @foreach($data as $data)
   <a href="./{{ $data->id }}" target="_blank" class="list-group-item list-group-item-action list-group-item-primary">
    {{ $data->title }} <span class="badge bg-primary rounded-pill">{{ date('d-m-Y', strtotime($data->published_at)) }}</span></a>
    @endforeach
</div>
</div>
</div>
@stop