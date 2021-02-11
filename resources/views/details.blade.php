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
" href="{{url('/')}}" class="btn btn-success"> <i class="far fa-hand-point-left"></i> Back</a>
<div class="card" style="width: 60%;
    margin: auto; align-content: ">
	
  <div class="card-body">
    <h5 class="card-title text-center">Persons Name: {{$data->pname}} {{$data->lastname}}</h5>
    <h6 class="card-subtitle mb-2 text-muted">Adhhar Number: {{$data->adhhar}}</h6>
  
    <h6 class="card-subtitle mb-2 text-muted">Birth Date: {{$data->bday}}</h6>
      <h6 class="card-subtitle mb-2 text-muted">Email: {{$data->email}}</h6>   

    <h6 class="card-subtitle mb-2 text-muted">Fathers Name: <a href="{{url('fmcdetails/'.$data->father)}}" class="card-link">{{$data->fname}}</a></h6>
    <h6 class="card-subtitle mb-2 text-muted">Mothers Name: <a href="{{url('mdetails/'.$data->mothers)}}" class="card-link">{{$data->mname}}</a></h6>
    <h6 class="card-subtitle mb-2 text-muted">Childs Name: <a href="{{url('cdetails/'.$data->childran)}}" class="card-link">{{$data->cname}}</a></h6>

    
   
  </div>
</div>
</div>
@endsection