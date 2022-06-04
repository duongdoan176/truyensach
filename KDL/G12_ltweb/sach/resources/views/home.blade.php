@extends('layouts.app')

@section('content')

@include('layouts.nav')
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
