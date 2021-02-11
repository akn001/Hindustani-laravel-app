<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\person;
use App\Models\mothers;
use App\Models\father;
use App\Models\childran;

class peopleController extends Controller
{
    function index(){
    	$person=new person();
        $person=$person->select("person.*");
        $person=$person->paginate(4);
        //dd($person);
        return view("index",compact('person'));
    }

    function details(Request $request)
    {
    	//$data=$data=person::find($request->id);

        $data=person::select("person.*","person.name as pname","father.name as fname","mothers.name as mname","childran.name as cname")
            ->leftJoin("father","father.id","person.father")//matching the data in two tables 
            ->leftJoin("mothers","mothers.id","person.mothers")
            ->leftJoin("childran","childran.id","person.childran")
            ->where("person.id", $request->id)
            ->first();
            //dd($data);
        return view("details")->with(['data'=>$data]);
    }  
    function fathers_details(Request $request)
    {
    	$data=$data=father::find($request->id);
    	//$data=$data=mothers::find($request->id);
    	//$data=$data=childran::find($request->id);
    	//dd($data);
    	return view("detailss")->with(['data'=>$data]);
    }   

     function Mothers_details(Request $request)
    {
    	$data=$data=mothers::find($request->id);
    	
    	return view("detailss")->with(['data'=>$data]);
    }  
     function Childs_details(Request $request)
    {
    	$data=$data=childran::find($request->id);
    	//$data=$data=mothers::find($request->id);
    	//$data=$data=childran::find($request->id);

    	return view("detailss")->with(['data'=>$data]);
    }  

}