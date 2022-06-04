<!--Sách mới--------------------------------------------------->
@extends('../layout')

@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
   
    <li class="breadcrumb-item active" aria-current="page"><a href="{{url('the_loai/'.$sach->theloai->slug_theloai)}}">{{$sach->theloai->tentheloai}}</a></li>
  </ol>
</nav>
<div class = "row">
  <div class="col-md-9">
    <div class="row">
      <div class ="col-md-3">
        <img src="{{asset('public/uploads/truyen/'.$sach->hinhanh)}}" width="200" height="200">
      </div>
      <div class="col-md-9">
        <style type="text/css">
          .infotruyen{
            list-style: none;
          }
        </style>
        <ul>
          <li>Tên sách: {{$sach->tensach}}</li>
          <li>Tác giả : {{$sach->tacgia}}</li>
          <li>Thể lại : <a href="{{url('the_loai/'.$sach->theloai->slug_theloai)}}">{{$sach->theloai->tentheloai}}</a></li>
          <li>
            <a href="{{url('xem_sach/'.$sach->slug_sach)}}" class="btn btn-primary">Đọc Online</a>
            <button class="btn btn-danger btn-thich-truyen"><i class="fa fa-heart"></i>Thích truyện</button>
          </li>

        </ul>
      </div>
    </div>
    <div class ="col-md-12">
      <p><h3>Tóm tắt truyện: </h3>  {{$sach->tomtat}}</p>

    <hr>
     <div class ="col-md-12">
      <p><h3>Nội dung: </h3>  {{$sach->noidung}}</p>
      
    <hr>
   
    <h4>Chia sẽ và bình luận </h4>
        <div class="fb-share-button" data-href="#" data-layout="button" data-size="large"><a target="_blank" href="#" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
        <div class="row">
          <div class="col-md-12">
            
            <div class="fb-comments" data-href="{{\URL::current()}}" data-width="" data-numposts="5">
      
            </div>
          </div>
      </div>
    <h4>Sách cùng danh mục</h4> 
    <div class="row">
          @foreach($cungtheloai as $key => $value)
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}">
                <div class="card-body">
                  <h4>{{$value->tensach}}</h4>
                  
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <a href="{{url('xem_sach/'.$value->slug_sach)}}" class="btn btn-sm btn-outline-secondary">Đọc online</a>
                      <a class="btn btn-sm btn-outline-secondary"><i class="far fa-eye"></i>100</a>
                    </div>
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
          </div>
          @endforeach


    </div>
    </div>
  </div >
  <div class="col-md-3">
    <h3>Danh mục truyện</h3>
  </div>
</div>
         
@endsection
