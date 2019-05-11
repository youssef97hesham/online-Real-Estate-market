<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
         'user_id' , 'type' , 'rooms' , 'area' , 'location' , 'price' , 'cover_image','state','rate'
    ];


    public function getShortContentAttribute()
    {

    	return $this->type.'...';
    }

    public function user(){
    	return $this->belongsTo('App\User');
    }

    public function comments(){
        return $this->hasMany('App\Comment');
    }

}
