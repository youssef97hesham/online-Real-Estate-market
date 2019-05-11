<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\article;
use auth;

class ProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       $this->middleware('auth');
    }

    public function profile($username)
    {	
    	$user=User::wherename($username)->first();
        $article=article::where([
       'user_id'=>$user->id,
       'state' => 'approved'])->get();
    	

    	return view('user.profile',compact('user'))->with('articles',$article);
    }

     public function editeprofile()
    {   
        $user=Auth::user();
        return view('user.editeprofile',compact('user'));
    }

     public function updateprofile(Request $request )
    {   
        
         $user=Auth::user();
         $user->update($request->all());
         $updateduser=Auth::user();
         return response()->json($updateduser, 200);
         
    }

    

}
