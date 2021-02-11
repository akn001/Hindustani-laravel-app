@extends('master')
@section('content')
<style type="text/css">
    h6{
            border-top: 1px solid;
    padding: 10px;
    }

</style>
<div class="container">
<a style="margin-top: 20px;
" href="{{ url()->previous() }}" class="btn btn-success"> <i class="far fa-hand-point-left"></i> Back</a>
<div class="card" style="width: 60%;
    margin: auto; align-content: ">
    <div class="card-body">
    <h5 class="card-title  text-center">Persons Name: {{$data->name}} {{$data->lastname}}</h5>
    <h6 class="card-subtitle mb-2 text-muted">Birth Date: {{$data->bday}}</h6>

    <h6 class="card-subtitle mb-2 text-muted">Adhhar Number: {{$data->adhhar}}</h6>
    <h6 class="card-subtitle mb-2 text-muted">Work In: {{$data->occupation}}</h6>
    <h6 class="card-subtitle mb-2 text-muted">Education: {{$data->education}}</h6>

    <!-- <h6 class="card-subtitle mb-2 text-muted">Email: {{$data->email}}</h6>    
 -->
    </div>
   
  </div>
</div>
</div>
@endsection