<!--Sách mới--------------------------------------------------->
@extends('../layout')

@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="{{url('danh_muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
    <li class="breadcrumb-item active" aria-current="page"><a href="{{url('the_loai/'.$truyen->theloai->slug_theloai)}}">{{$truyen->theloai->tentheloai}}</a></li>
  </ol>
</nav>
<div class = "row">
	<div class="col-md-9">
		<div class="row">
			<div class ="col-md-3">
				<img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" width="200" height="200">
			</div>
			<div class="col-md-9">
				<style type="text/css">
					.infotruyen{
						list-style: none;
					}
				</style>
				<ul>
					<li>Tên truyện: {{$truyen->tentruyen}}</li>
					<li>Tác giả : {{$truyen->tacgia}}</li>
					<li>Danh mục : <a href="{{url('danh_muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
					<li>Thể lại : <a href="{{url('the_loai/'.$truyen->theloai->slug_theloai)}}">{{$truyen->theloai->tentheloai}}</a></li>
					  @php
            $count = count($chapter);
            @endphp
            @if($count==0)
            <li>Số chapter : 0</li>
            @else
            <li>Số chap: {{$count}}</li>
            @endif
					<li>View : 10000</li>
					<li><a href="#">Xem mục lục</a></li>
					
					<li>
						<a href="{{route('giohang.create')}}" class="btn btn-primary">Muon</a>
						<button class="btn btn-danger btn-thich-truyen"><i class="fa fa-heart"></i>Thích truyện</button>
					</li>

					
			</div>
		</div>
		<div class ="col-md-12">
			<p><h3>Tóm tắt truyện: </h3>	{{$truyen->tomtat}}</p>
		<hr>
		<h4>Mục lục</h4>
		<ul class="mucluctruyen">
			@php
				$mucluc = count($chapter);
			@endphp

			@if($mucluc > 0)
				@foreach($chapter as $key =>$chap)
				<li><a href="{{url('xem_chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</a></li>
				@endforeach
			@else
				<li>Đang cập nhật</li>
			@endif

		</ul>
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
 					@foreach($cungdanhmuc as $key => $value)
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
	</div	>

</div>
         
@endsection
