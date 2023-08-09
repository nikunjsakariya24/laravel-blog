@extends('layouts.app')

@section('content')
    <h1>Post</h1>
    @if(count($posts) > 0)
        @foreach ($posts as $post)
        <div class="card mb-3 bg-light">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="{{$post->cover_img}}" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h3><a href="/post/{{$post->id}}" >{{$post->title}}</a></h3>
                        <small>Written on : {{$post->created_at}} By {{$post->user->name}}</small>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
       {{$posts->links()}}
    @else
        <p>No Post Found</p>
    @endif
@endsection