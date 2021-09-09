<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\WidgetController;
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
//Routes PUBLIQUES ALL USERS,SIGN UP, SIGNIN, LOGOUT//
Route::get('/users', [AuthController::class, 'index']);
Route::post( '/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/users/{id}', [AuthController::class, 'show']);
Route::get('/users/{token}', [AuthrController::class, 'showbytoken']);


//Routes PRIVEES//
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get( '/user', [AuthController::class, 'user']);
    Route::post('/createwidget', [WidgetController::class, 'create']);
    Route::get('/widgets', [WidgetController::class, 'index']);
    Route::delete('/deletewidget/{id}', [WidgetController::class, 'destroy']);
});

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
