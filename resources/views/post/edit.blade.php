@extends('layouts.app')

@section('content')
    <h1>Edit Post</h1>
    <br>
    <form action="{{ route('post.update',$post->id) }}" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" id="title" name="title" value="{{$post->title}}" class="form-control" placeholder="Title">
        </div>
        <div class="form-group">
            <label for="article-ckeditor">Body</label>
            <textarea name="body" id='article-ckeditor' cols="30" rows="10" class="form-control" placeholder="Body">{!! $post->body !!}</textarea>
        </div>
        <div class="form-group">
            <div class="custom-file">
                <input type="file" class="custom-file-input" name="cover_img" id="cover_img" aria-describedby="inputGroupFileAddon01">
                <label class="custom-file-label" for="cover_img">Choose file</label>
            </div>
        </div>
        <div class="form-group">
            <input type="hidden" name="_method" value="PUT"> 
            <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary">
        </div>
    </form>
@endsection