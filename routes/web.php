<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\peopleController;


Route::get("/",[peopleController::class, 'index']);

Route::get("details/{id?}",[peopleController::class, 'details']);
Route::get("fmcdetails/{id?}",[peopleController::class, 'Fathers_details']);
Route::get("mdetails/{id?}",[peopleController::class, 'Mothers_details']);
Route::get("cdetails/{id?}",[peopleController::class, 'Childs_details']);



