<!--Sách mới--------------------------------------------------->
@extends('../layout')
@section('slide')
  @include('pages.slide')
@endsection

@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
    <li class="breadcrumb-item active" aria-current="page">Tìm kiếm</li>
  </ol>
</nav>
            <h3>Bạn đang tìm : {{$tukhoa}}</h3>
            <div class="album py-5 bg-light">
        <div class="container">
         

          <div class="row">
            @php
            $count = count($truyen);
            $count1 = count($sach)
            @endphp
            @if($count + $count1 ==0)
              <div class="col-md-9">
                  <div class="card mb-9 box-shadow">
                    <div class="card-body">
                      <p>Không tìm thấy truyện....</p>
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
           @foreach($sach as $key => $value)
            <div class="col-md-2">
            
                <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}"  height="150">
              
               <div class="card-body">
                
                  
                  <div class="">
                    
                    <div class="btn-group">
                      <a href="{{url('xem_sach/'.$value->slug_sach)}}" ><center>{{$value->tensach}}</center></a>
                     
                    </div>
                   
                  </div>
                </div>
          </div>
          @endforeach
           </div>

          @endif
      </div>
           <a class="btn btn-success">Xem tất cả</a>
     </div>

      </div>
@endsection
