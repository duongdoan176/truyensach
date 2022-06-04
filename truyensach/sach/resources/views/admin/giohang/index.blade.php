@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Xem danh mục</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">STT</th>
                          <th scope="col">Name</th>
                          <th scope="col">Email</th>
                          <th scope="col">Ten sach</th>
                          <th scope="col">Ngay muon</th>
                          <th scope="col">Han tra</th>
                          <th scope="col">Gia muon</th>
                          <th scope="col">Trang thai</th>
                          <th scope="col">Quản lý</th>
                        </tr>
                      </thead>
                      <tbody>
                      
                      
                       
                      </tbody>
                    </table>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
