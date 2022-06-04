@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Xem đơn hàng</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table table-striped table-responsive">
                      <thead>
                        <tr>
                          <th scope="col">STT</th>
                          <th scope="col">Email</th>
                          <th scope="col">Tên sách</th>
                          <th scope="col">Ngày mượn</th>
                          <th scope="col">Hạn trả</th>
                          <th scope="col">Giá mượn</th>
                          <th scope="col">Trạng thái</th>
                          <th scope="col">Quản lý</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($list_sach as $key => $sach)
                        <tr>
                          <th scope="row">{{$key}}</th>
                          <td>{{$sach->email}}</td>
                          <td>{{$sach->tensach}}</td>
                          <td>{{$sach->ngaymuon}}</td>
                          <td>{{$sach->hantra}}</td>
                          <td>{{$sach->giamuon}}</td>
                          <td>
                              @if($sach->trangthai == 0)
                                  <span class ='text text-success'>Đang mượn</span>
                              @else
                                  <span class ='text text-danger'>Quá hạn</span>
                              @endif


                          </td>
                          <td>
                            <a href="{{route('sach.edit',['sach'=>$sach->id])}}" class ='btn btn-primary'>EDIT</a>
                            <form action="{{route('sach.destroy',['sach'=>$sach->id])}}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button onclick="return confirm('Xóa  truyện này')" class = "btn btn-danger">DELETE</button>
                                  
                            </form>
                          </td>
                        </tr>
                        @endforeach 
                      </tbody>
                    </table>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
