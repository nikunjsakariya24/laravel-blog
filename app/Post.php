<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Post extends Model
{
    //table
    protected $table = 'post';

    //primaryKey
    public $primaryKey ='id';

    //timestamps
    public $timestamps = true;

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
