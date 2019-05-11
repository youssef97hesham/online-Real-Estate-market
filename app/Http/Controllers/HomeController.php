<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\article;
use DB;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function search_articles()
    {  $searchkey = \Request::get("q");
      
       $articles =  Article::where('type','like','%' .$searchkey. '%')->paginate(10);
       return view("articles.search_article" , ['articles'=>$articles]);
    }
}
