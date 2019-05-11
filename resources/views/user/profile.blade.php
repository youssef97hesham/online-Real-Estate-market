@extends('layouts.south')

<style type="text/css">
  .profile-img{
  	max-width: 150px;
    min-height: 150px;
  	border:4px solid #fff;
  	border-radius: 100%;
  	box-shadow: 0px 5px 5px rgba(0,0,0,0.5);
              }
   .habd{ top: -46px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
@section('content')

 <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(/images/bg-img/hero1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Find your home</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(/images/bg-img/hero2.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Find your dream house</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(/images/bg-img/hero3.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Find your perfect house</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Advance Search Area Start ##### -->
    <div class="south-search-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="advanced-search-form text-center">
                        <!-- Search Title -->
                        <div class="search-title">

                            <img class="profile-img" src="/storage/cover_image/{{$user->cover_image}}" alt="">
                        </div>
                        <!-- Search Form -->
                        <h2  style="margin-top: 60px;"><b id="username">{{$user->name}}</b></h2>
                        <p>Key Account Manager</p>
                        <ul class="information margin-tb-30">
                            <li><b>BORN : </b>August 25, 1987</li>
                            <li><b>EMAIL : </b>{{$user->email}}</li>
                            <li><b>MARITAL STATUS : </b>Married</li>
                        </ul>
                    
                            <button type="submit" class="btn south-btn" data-toggle="modal" data-target="#exampleModalCenter" >
                                edit
                            </button>
                                              

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Advance Search Area End ##### -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                    <form method="POST" enctype="multipart/form-data" id="update-form">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus placeholder="{{$user->name}}">

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required placeholder="{{$user->email}}">

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                       

                        
                    </form>
                        

                        
                    
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" form="update-form">Save changes</button>
      </div>
      
    </div>
  </div>
</div>
    <!-- ##### Featured Properties Area Start ##### -->
    <section class="featured-properties-area section-padding-100-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading wow fadeInUp">
                        <h2>My Own Properties</h2>
                        <p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Featured Property -->
                @forelse($articles as $article)
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            @if($article->cover_image=='noimage.jpg')
                            <img style="width: 350px; height:200px;" src="/storage/cover_image/default-2.jpg" alt="">
                            @else
                            <img style="width: 350px; height:200px;" src="/storage/cover_image/{{$article->cover_image}}" alt="">
                            @endif
                            <div class="tag">
                                <span> {{ $article->type}}</span>
                            </div>
                            <div class="list-price">
                                <p>$ {{ $article->price}}</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5> {{ $article->location}}</h5>
                            <p class="location"><img src="/images/icons/location.png" alt=""> {{ $article->location}}</p>
                            <p>Integer nec bibendum lacus. Suspendisse dictum enim sit amet libero malesuada.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="/images/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="/images/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="/images/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="/images/icons/space.png" alt="">
                                    <span>{{ $article->area}} sq ft</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @empty
                no articles.
                @endforelse

            </div>
        </div>
    </section>
    <!-- ##### Featured Properties Area End ##### -->



    <!-- ##### Call To Action Area Start ##### -->
 
    <!-- ##### Call To Action Area End ##### -->

    <!-- ##### Testimonials Area Start ##### -->
    
    <!-- ##### Testimonials Area End ##### -->

    <!-- ##### Editor Area Start ##### -->
   
    <!-- ##### Editor Area End ##### -->




<script >
    $(document).ready(function(){
    $('#update-form').on('submit',function(event){
            event.preventDefault();
            var form_data = $(this).serialize();
            $.ajax({
                url:"{{route('profileupdate')}}",
                method:'POST',
                data:form_data,
                dataType:'json',
                success:function(data)
                {
                    
                       
                        console.log(data);
                        $('#exampleModalCenter').modal('toggle');
                        $('#username').html("<b >"+data.name+"</b>");


                    

                           

                          



                   
                }
            })
    }); 



});
</script>
@endsection