@extends ('layouts.app')
@section ('content')

<div class="row">



@if(count($articles)>0)
@foreach($articles as $article)

    <div class="col-md-6 offset-md-3 mt-4" >
    <div class="card" >
      <div class="card-header" >
            
        <span class="float-right">the owner</span>

      </div>

        <div class="card-body">
          
            <span class="">
            <label for="type">type :</label> {{ $article->type}}
            <br>
            <label for="rooms">rooms :</label> {{ $article->rooms}}
            <br>
            <label for="location">location :</label> {{ $article->location}}
            <br>
            <label for="area">area :</label> {{ $article->area}}
            <br>
            <label for="price">price :</label> {{ $article->price}}
            </span>
       </div>
    </div>
    </div>

 
  @endforeach
  @endif


</div>


@endsection