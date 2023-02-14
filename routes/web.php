<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GenbaController;
use App\Http\Controllers\HyoujiController;
use App\Http\Controllers\KoujyouController;
use App\Http\Controllers\NounyusakiController;
use App\Http\Controllers\SyouhinController;
use App\Http\Controllers\Syouhin_syubetsuController;
use App\Http\Controllers\TankaController;
use App\Http\Controllers\Tanka_syubetsuController;
use App\Http\Controllers\UrikakeController;
use App\Http\Controllers\NebikiController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('genbas', GenbaController::class);
Route::resource('hyoujis', HyoujiController::class);
Route::resource('koujyous', KoujyouController::class);
Route::resource('nounyusakis', NounyusakiController::class);
Route::resource('syouhins', SyouhinController::class);
Route::resource('syouhin_syubetsus', Syouhin_syubetsuController::class);
Route::resource('tankas', TankaController::class);
Route::resource('tanka_syubetsus', Tanka_syubetsuController::class);
Route::resource('urikakes', UrikakeController::class);
Route::resource('nebikis', NebikiController::class);