@extends('layouts.app')

@section('content')

@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Xem chapter</div>

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
                          <th scope="col">Tiêu đề</th>
                          <th scope="col">Slug chapter</th>
                          <th scope="col">Tóm tắt</th>
                          <th scope="col">Truyện</th>
                          <th scope="col">Kích hoạt</th>
                          <th scope="col">Quản lý</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($chapter as $key => $chapter)
                        <tr>
                          <th scope="row">{{$key}}</th>
                          <td>{{$chapter->tieude}}</td>
                          <td>{{$chapter->slug_chapter}}</td>
                          <td>{{$chapter->tomtat}}</td>
                          <td>{{$chapter->truyen->tentruyen}}</td>
                          <td>
                              @if($chapter->kichhoat == 0)
                                  <span class ='text text-success'>Kích hoạt</span>
                              @else
                                  <span class ='text text-danger'>Không kích hoạt</span>
                              @endif


                          </td>
                          <td>
                            <a href="{{route('chapter.edit',['chapter'=>$chapter->id])}}" class ='btn btn-primary'>EDIT</a>
                            <form action="{{route('chapter.destroy',['chapter'=>$chapter->id])}}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button onclick="return confirm('Xóa chapter này')" class = "btn btn-danger">DELETE</button>
                                  
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
