@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm thể loại</div>
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
                    <form method="POST" action="{{route('giohang.store')}}">
                        @csrf
                        <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" class="form-control" value = "{{old('ten')}}" name ="ten" id="slug" aria-describedby="emailHelp" placeholder="Name">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="text" class="form-control" value = "{{old('email')}}" name ="email" id="convert_slug" aria-describedby="emailHelp" placeholder="Email">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Ten sach</label>
                        <input type="text" class="form-control" value = "{{old('tensach')}}" name ="tensach" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ten sach">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Ngay muon</label>
                        <input type="text" class="form-control" value = "{{old('ngaymuon')}}" name ="ngaymuon" id="convert_slug" aria-describedby="emailHelp" placeholder="Ngay muon">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Han tra</label>
                        <input type="text" class="form-control" value = "{{old('hantra')}}" name ="hantra" id="convert_slug" aria-describedby="emailHelp" placeholder="Han tra">
                        </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Gia</label>
                        <input type="text" class="form-control" value = "{{old('gia')}}" name ="gia" id="convert_slug" aria-describedby="emailHelp" placeholder="Gia">
                        </div>
                        <button type="submit" name ="themtheloai" class="btn btn-primary">Thêm</button>
                    </form>

 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection