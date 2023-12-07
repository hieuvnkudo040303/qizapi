<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ChuongController;
use App\Http\Controllers\BaiController;
use App\Http\Controllers\KienthucController;
use App\Http\Controllers\CauhoiController;
use App\Http\Controllers\DeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TraloiController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->group(function () {
    Route::prefix('auth')->controller(AuthController::class)->group(function () {
        Route::post('/logout', 'logout');
    });
    Route::prefix('cauhoi')->controller(CauhoiController::class)->group(function () {
        Route::post('/taode', 'taode');
    });
    Route::prefix('de')->controller(DeController::class)->group(function () {
        Route::get('/', 'index');
        Route::get('/{id}', 'show');
    });
    Route::prefix('traloi')->controller(TraloiController::class)->group(function () {
        Route::post('/', 'reset');
    });

});

Route::prefix('auth')->controller(AuthController::class)->group(function () {
    Route::post('/login', 'login');
    Route::post('/register', 'register');
});

Route::prefix('chuong')->controller(ChuongController::class)->group(function () {
    Route::get('/', 'index');
});

Route::prefix('bai')->controller(BaiController::class)->group(function () {
    Route::get('/', 'index');
});

Route::prefix('kienthuc')->controller(KienthucController::class)->group(function () {
    Route::get('/', 'index');
});

Route::prefix('traloi')->controller(TraloiController::class)->group(function () {
    Route::put('/', 'update');
});



