@extends('master')
@section('content')
<style type="text/css">
  .relative svg{
    max-width: 4%;
  }
  .flex .sm:hidden{
    display: none;
  }
  table{
    box-shadow: 0 1px 3px rgb(0 0 0 / 12%), 0 1px 2px rgb(0 0 0 / 24%);
  }
</style>
<div class="container">
<h1 style="text-align:center;"><img src="{{asset('public/india.png')}}" style="height: 52px; border-radius: 40%;
"> HINDUSTANI</h1>
<table id="tableData" class="table table-bordered table-striped">
          <thead>
    <tr>
              <th>id</th>
              <th>first name</th>
              <th>last name</th>
              <th>Addhar Card</th>
              <th>Birth Date</th>
              <th>email</th>

              <th>Show Details</th>
            </tr>
  </thead>
          <tbody>
          	@foreach($person as $key => $per)
    		<tr>
              <td>{{ $person->firstItem() + $key }}</td>
              <td>{{$per->name}}</td>
              <td>{{$per->lastname}}</td>
              <td>{{$per->adhhar}}</td>
              <td>{{$per->bday}}</td>
              <td>{{$per->email}}</td>
              <td><a href="{{url('details/'.$per->id)}}">Show Details</a></td>
            </tr>
            @endforeach
  </tbody>
        </table>
        <div class="pagination">

       {{ $person->render("pagination::bootstrap-4") }}
        </div>
         </div>
@endsection