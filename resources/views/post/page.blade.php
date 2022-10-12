<style>
.berita {
  margin-top:10px;
  margin-bottom:10px;
}
</style>
@extends('pages.pages')
@section('content')
<div class="row">
    <div class="container-xxl py-5 p-5 m-3">
        @foreach($pages as $page)
        <div class="card">
          <div class="card-header">
              <img class="img-fluid mb-3 rounded mx-auto d-block" src="{{ $page->hero }}" class="d-block w-100" alt="..."> 
          </div>
            <div class="card-body">
                <h3 class="card-title" style="text-align: center;">{{ $page->title }}</h3>
                <p ><span class="badge rounded-pill bg-info">{{ date('d-m-Y', strtotime($page->published_at)) }}</span></p> 
                <p>{{ $page->user_name }}</p>
                  <div class="berita">{!! \Illuminate\Support\Str::markdown($page->body) !!}
                  </div>       
          </div>
        @endforeach
      </div>
</div>
@stop