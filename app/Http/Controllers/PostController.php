<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth',['except'=>['index','show']]);
    }

    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('created_at','desc')->paginate(10); 
        return view('post.index')->with('posts',$posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('post.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'  =>  'required',
            'body'   =>  'required',
            'cover_img'=> 'image|nullable'
        ]);

        if($request->hasfile('cover_img'))
        {
            $filenameWithExt = $request->file('cover_img')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('cover_img')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Move Image
            $request->file('cover_img')->move(public_path('cover_img'), $fileNameToStore);
            $cover_img = "cover_img/".$fileNameToStore;
        }
        else
        {   
            $cover_img = 'cover_img/noimage.jpg';
        }   

        $new_post = new Post;
        $new_post->title = $request->input('title');
        $new_post->body = $request->input('body');
        $new_post->user_id =  auth()->user()->id;
        $new_post->cover_img = $cover_img;
        $new_post->save();

        return redirect('/post')->with('success','Post Created');
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post =  Post::find($id);
        return view('post.show')->with('post',$post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post =  Post::find($id);
        if(auth()->user()->id !== $post->user_id)
        {
            return redirect('/post')->with('error','Unauthorize');
        }
        return view('post.edit')->with('post',$post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {   
        $this->validate($request,[
            'title'  =>  'required',
            'body'   =>  'required',
            'cover_img'=> 'image|nullable'
        ]);

        if($request->hasfile('cover_img'))
        {
            $filenameWithExt = $request->file('cover_img')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('cover_img')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Move Image
            $request->file('cover_img')->move(public_path('cover_img'), $fileNameToStore);
            $cover_img = "cover_img/".$fileNameToStore;
        }

        $up_post = Post::find($id);
        $up_post->title = $request->input('title');
        $up_post->body = $request->input('body');
        if($request->hasfile('cover_img'))
        {
            $up_post->cover_img = $cover_img;
        }
        $up_post->save();

        return redirect('/post')->with('success','Post Update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->delete();
        return redirect('/post')->with('success','Post Deleted ');
    }
}
