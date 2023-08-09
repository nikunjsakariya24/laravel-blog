@extends('layouts.app')

@section('content')
    <a href="/post" class="btn btn-info"><i class="fas fa-backward"></i></a>
    <br>
    <br>
    <div class="card mb-3 bg-light">

        <div class="card-header">
            
            @auth
                @if(Auth::user()->id == $post->user_id)
                    <form action="{{ route('post.destroy',$post->id) }}" method="POST">
                        @csrf
                        <input type="hidden" name="_method" value="DELETE"> 
                        <button type="submit" name="submit" id="submit" class="btn btn-danger float-right"><i class="fas fa-trash"></i></button>
                        <a href="/post/{{$post->id}}/edit" class="btn btn-primary float-right"><i class="fas fa-pencil-alt"></i></a>                      
                    </form>
                @endif
            @endauth
            
            <h1>{{$post->title}}</h1>
            
        </div>
        <div class="card-body">
            <img src="{{asset($post->cover_img)}}" class="card-img" alt="Cover_img">
            <br>
            <hr>
            <h3>{!! $post->body !!}</h3>
        </div>
        <div class="card-footer">
            <small class="float-right">Updated on : {{$post->updated_at}}</small>
            <small>Written on : {{$post->created_at}} By {{$post->user->name}}</small>
        </div>
    </div>   
  
    <hr>

@endsection 