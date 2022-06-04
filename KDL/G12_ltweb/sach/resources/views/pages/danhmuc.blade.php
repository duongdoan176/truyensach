<!--Sách mới--------------------------------------------------->
@extends('../layout')
@section('slide')
  @include('pages.slide')
@endsection

@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
    <li class="breadcrumb-item active" aria-current="page">{{$tendanhmuc}}</li>
  </ol>
</nav>
            
            <div class="album py-5 bg-light">
        <div class="container">
         

          <div class="row">
            @php
            $count = count($truyen);
            @endphp
            @if($count==0)
              <div class="col-md-9">
                  <div class="card mb-9 box-shadow">
                    <div class="card-body">
                      <p>Truyện chưa cập nhật....</p>
                    </div>
                  </div>
              </div>

            @else

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
          @endif
      </div>
           <a class="btn btn-success">Xem tất cả</a>
     </div>

      </div>
@endsection
