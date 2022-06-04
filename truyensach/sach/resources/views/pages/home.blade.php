<!--Sách mới--------------------------------------------------->
@extends('../layout')
@section('slide')
  @include('pages.slide')
@endsection

@section('content')
          
           
            
            <center>
        <div class="album py-5 bg-light">
        <div class="container">
         

          <div class="row">
            @foreach($truyen as $key => $value)
            <div class="col-md-2">
            
                <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}"  height="150">
              
               <div class="card-body">
                
                  
                  <div class="">
                    
                    <div class="btn-group">
                      <a href="{{url('xem_truyen/'.$value->slug_truyen)}}" ><center>{{$value->tentruyen}}</center></a>
                     
                    </div>
                   
                  </div>
                </div>
          </div>
          @endforeach

          
           </div>
          
     </div>
     </div>
          </center>
          
         
          
     
   
@endsection
