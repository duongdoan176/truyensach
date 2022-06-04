@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm đơn</div>
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
                    <form method="POST" action="{{route('sach.store')}}" enctype='multipart/form-data'>
                        @csrf
                        
                        <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="text" class="form-control" value = "{{old('email')}}" name ="email" id="slug" aria-describedby="emailHelp" placeholder="Email">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Ten sach</label>
                        <input type="text" class="form-control" value = "{{old('tensach')}}" name ="tensach" id="convert_slug" aria-describedby="emailHelp" placeholder="Tên sách">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Ngaymuon</label>
                        <input type="date" class="form-control" value = "{{old('ngaymuon')}}" name ="ngaymuon" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>
                         <div class="form-group">
                        <label for="exampleInputEmail1">Han tra</label>
                        <input type="date" class="form-control" value = "{{old('hantra')}}" name ="hantra" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>
                         <div class="form-group">
                        <label for="exampleInputEmail1">gia muon</label>
                        <input type="text" class="form-control" value = "{{old('giamuon')}}" name ="giamuon" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>

                         <div class="form-group">
                         <label for="exampleInputEmail1">Trang thai</label>
                        <select name ="trangthai" class="custom-select">
                          <option value="0">Dang muon</option>
                          <option value="1">Qua han</option>
                        </select>
                        </div>
                        <button type="submit" name ="themsach" class="btn btn-primary">Thêm</button>
                    </form>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
