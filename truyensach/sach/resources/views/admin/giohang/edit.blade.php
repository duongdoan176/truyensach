@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật dơn hàng</div>
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
                    <form method="POST" action="{{route('sach.update')}}" enctype='multipart/form-data'>
                        @csrf
                        
                         <div class="form-group">
                        <label for="exampleInputEmail1">Han tra</label>
                        <input type="text" class="form-control" value = "{{old('hantra')}}" name ="hantra" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
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
                        <button type="submit" name ="themsach" class="btn btn-primary">Cập nhật</button>
                    </form>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
