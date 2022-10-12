<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

@extends('pages.pages')
<div class="container-xxl py-3 p-3">

@section('content')
<main>
<div class="container-xxl py-3 p-10">
<div class="row" data-masonry='{"percentPosition": true }'>
@foreach ( $posts as $post)
    <div class="col-sm-6 col-lg-4 mb-4">
      <div class="card p-2">
      <img src="{{ $post->hero }}" class="card-img-top" alt="" />

        <div class="card-body">
        <a href="./berita/{{ $post->slug }}"><h5 class="card-title" target="_blank">{{ $post->title }}</h5></a>
        <span class="badge rounded-pill bg-secondary">{{ date('d-m-Y', strtotime($post->published_at)) }}</span>
        <span class="badge rounded-pill bg-primary">{{ $kat[ $post->kategori]  }}</span>
          <p class="card-text pt-2">{{ $post->description }}</p>
        </div>
      </div>
    </div>
    @endforeach
</main>

</div>
</div>
</div>
@stop