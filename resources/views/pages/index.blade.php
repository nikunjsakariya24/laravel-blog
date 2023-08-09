@extends('layouts.app')
@section('content')
    <div class="jumbotron text-center">
        <h1 class="display-3">Welcome To Laravel</h1>
        <p class="lead">Laravel Blog Apllication</p>
        <p class="lead">
            @guest
                <a class="btn btn-primary btn-lg" href="{{ route('login') }}" role="button">Login</a>
                <a class="btn btn-success btn-lg" href="{{ route('register') }}" role="button">Regitration</a>    
            @endguest
        </p>
    </div>
@endsection
