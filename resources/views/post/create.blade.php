@extends('layouts.app')

@section('content')
    <h1>Create Post</h1>
    <br>
    <form action="{{ route('post.store') }}" method="POST" enctype="multipart/form-data" class="shadow-lg p-3 mb-5 bg-white rounded">
        @csrf
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" id="title" name="title" class="form-control" placeholder="Title">
        </div>
        <div class="form-group">
            <label for="article-ckeditor">Body</label>
            <textarea name="body" id='article-ckeditor' cols="30" rows="15" class="form-control" placeholder="Body"></textarea>
        </div>
      
        <div class="form-group">
            <div class="custom-file">
                <input type="file" class="custom-file-input" name="cover_img" id="cover_img" aria-describedby="inputGroupFileAddon01">
                <label class="custom-file-label" for="cover_img">Choose file</label>
            </div>
        </div>

        <div class="form-group">
            <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary form-control col-4">
        </div>
               
    </form>
@endsection