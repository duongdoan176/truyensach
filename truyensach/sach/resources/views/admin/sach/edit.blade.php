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
                    <form method="POST" action="{{route('sach.update',[$sach->id])}}" enctype='multipart/form-data'>
                        @method('PUT')
                        @csrf
                        
                         <div class="form-group">
                        <label for="exampleInputEmail1">Hạn trả</label>
                        <input type="date" class="form-control" value = "{{$sach->hantra}}" name ="hantra" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>
                         <div class="form-group">
                        <label for="exampleInputEmail1">gia muon</label>
                        <input type="text" class="form-control" value = "{{$sach->giamuon}}" name ="giamuon" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tóm tắt">
                        </div>

                         <div class="form-group">
                         <label for="exampleInputEmail1">Trang thai</label>
                        <select name ="trangthai" class="custom-select">
                            @if($sach->trangthai == 0)
                          <option selected value="0">Dang muon</option>
                          <option value="1">Quá hạn</option>
                          @else
                          <option value="0">Đang mượn</option>
                          <option selected value="1">Quá hạn</option>
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
