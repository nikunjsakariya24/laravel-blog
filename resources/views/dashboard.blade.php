@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            Dashboard
        </div>

        <div class="card-body">
            @if (count($posts) > 0)
                <table class="table table-striped">
                    <thead class="thead-default">
                        <tr>
                            <th>Title</th>
                            <th>Opration</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($posts as $post)
                                <tr>
                                    <td>{{$post->title}}</td>
                                    <td>
                                        <form action="{{ route('post.destroy',$post->id) }}" method="POST">
                                            @csrf
                                            <input type="hidden" name="_method" value="DELETE"> 
                                            <button type="submit" name="submit" id="submit" class="btn btn-danger float-right"><i class="fas fa-trash"></i></button>
                                            <a href="/post/{{$post->id}}/edit" class="btn btn-primary float-right"><i class="fas fa-pencil-alt"></i></a>                      
                                        </form>                                
                                    </td>
                                </tr>
                            @endforeach
                    </tbody>
                </table>    
                    
            
            @else
                You Have not Post
            @endif
        </div>
    </div>
</div>
@endsection
