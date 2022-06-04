@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật truyện</div>
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
                    <form method="POST" action="{{route('truyen.update', [$truyen->id])}}" enctype='multipart/form-data'>
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tên truyện</label>
                        <input type="text" class="form-control" value = "{{$truyen->tentruyen}}" onkeyup ="ChangeToSlug();" name ="tentruyen" aria-describedby="emailHelp" placeholder="Tên truyện">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tác giả</label>
                        <input type="text" class="form-control" value = "{{$truyen->tacgia}}" name ="tacgia" id="slug" aria-describedby="emailHelp" placeholder="Tên tác giả">
                        </div>
                          <div class="form-group">
                        <label for="exampleInputEmail1">Dịch giả</label>
                        <input type="text" class="form-control" value = "{{$truyen->tendichgia}}" name ="tendichgia" id="slug" aria-describedby="emailHelp" placeholder="Tên dịch giả">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Nhà xuất bản</label>
                        <input type="text" class="form-control" value = "{{$truyen->nhaxb}}" name ="nhaxb" id="slug" aria-describedby="emailHelp" placeholder="Nhà xuất bản">
                        </div>
                          <div class="form-group">
                        <label for="exampleInputEmail1">Quốc gia</label>
                        <input type="text" class="form-control" value = "{{$truyen->quocgia}}" name ="quocgia" id="slug" aria-describedby="emailHelp" placeholder="Tên quốc gia">
                        </div>

                        <div class="form-group">
                        <label for="exampleInputEmail1">Slug truyện</label>
                        <input type="text" class="form-control" value = "{{$truyen->slug_truyen}}" name ="slug_truyen" id="convert_slug" aria-describedby="emailHelp" placeholder="Slug truyện">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Tóm tắt</label>
                        <textarea name="tomtat" class ="form-control" rows="5" style="resize: none;">{{$truyen->tomtat}}</textarea>
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Danh mục truyện</label>
                        <select name ="danhmuc" class="custom-select">
                          @foreach($danhmuc as $key => $muc)
                          <option value = "{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                          @endforeach

                    
                        </select>
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Thể loại truyện</label>
                        <select name ="theloai" class="custom-select">
                          @foreach($theloai as $key => $the)
                          <option value = "{{$the->id}}">{{$the->tentheloai}}</option>
                          @endforeach

                    
                        </select>
                        </div>
                        
                        <div class="form-group">
                        <label for="exampleInputEmail1">Hình ảnh truyện</label>
                        <input type="file" class="form-control-file" name ="hinhanh">
                        <img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" height="150" width="150">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Kích hoạt</label>
                        <select name ="kichhoat" class="custom-select">
                          @if($truyen->kichhoat == 0)
                          <option selected value="0">Kích hoạt</option>
                          <option value="1">Không kích hoạt</option>
                          @else
                          <option value="0">Kích hoạt</option>
                          <option selected value="1">Không kích hoạt</option>
                          @endif
                        </select>
                        </div>
                        <button type="submit" name ="themtruyen" class="btn btn-primary">Cập nhật</button>
                    </form>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
