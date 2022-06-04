@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật sách</div>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('sach.update', [$sach->id])}}" enctype='multipart/form-data'>
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tên sách</label>
                        <input type="text" class="form-control" value = "{{$sach->tensach}}" onkeyup ="ChangeToSlug();" name ="tensach" id="slug" aria-describedby="emailHelp" placeholder="Tên sách">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tên tác giả</label>
                        <input type="text" class="form-control" value = "{{$sach->tacgia}}" onkeyup ="ChangeToSlug();" name ="tacgia" id="slug" aria-describedby="emailHelp" placeholder="Tác giả">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Slug sách</label>
                        <input type="text" class="form-control" value = "{{$sach->slug_sach}}" name ="slug_sach" id="convert_slug" aria-describedby="emailHelp" placeholder="Slug sách">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tóm tắt</label>
                        <input type="text" class="form-control" value = "{{$sach->tomtat}}" name ="tomtat" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>
                          <div class="form-group">
                        <label for="exampleInputEmail1">Thể loại sách</label>
                        <select name ="theloai" class="custom-select">
                          @foreach($theloai as $key => $the)
                          <option value="{{$the->id}}">{{$the->tentheloai}}</option>
                          @endforeach

                    
                        </select>

                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Hình ảnh truyện</label>
                        <input type="file" class="form-control-file" name ="hinhanh">
                        <img src="{{asset('public/uploads/truyen/'.$sach->hinhanh)}}" height="150" width="150">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Nội dung</label>
                        <textarea name="noidung" id ="noidung_chapter" class ="form-control" rows="5" style="resize: none;">{{$sach->noidung}}</textarea>
                       <div class="form-group">
                        <label for="exampleInputEmail1">Kích hoạt</label>
                        <select name ="kichhoat" class="custom-select">
                          @if($sach->kichhoat == 0)
                          <option selected value="0">Kích hoạt</option>
                          <option value="1">Không kích hoạt</option>
                          @else
                          <option value="0">Kích hoạt</option>
                          <option selected value="1">Không kích hoạt</option>
                          @endif
                        </select>
                        </div>
                        <button type="submit" name ="themsach" class="btn btn-primary">Cập nhật</button>
                    </form>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
