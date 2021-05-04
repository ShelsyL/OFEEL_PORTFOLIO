<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\View;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

use App\Http\Controllers\Works;
Route::resource('works', Works::class, [
  'except' => ['show', 'create', 'edit']
]);

use App\Http\Controllers\Categories;
Route::resource('categories', Categories::class, [
  'except' => ['show', 'create', 'edit']
]);
