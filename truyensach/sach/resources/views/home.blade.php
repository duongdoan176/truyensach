@extends('layouts.app')

@section('content')

@include('layouts.nav')
<center><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXpyl9XyBbun_MqGSVEXips0DXfuLNzKKQ7A&usqp=CAU"style="width:800px;height:600px;></center>
<div class="container">
    
        <div class="col-md-8">

                

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

 
                </div>
            </div>
       
    
</div>
@endsection
