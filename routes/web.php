<?php

use Illuminate\Support\Facades\Route;
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

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/syukkakanris', 'App\Http\Controllers\SyukkakanriController@index')->name('syukkakanris.index');
Route::get('/syukkakanris/create', 'App\Http\Controllers\SyukkakanriController@create')->name('syukkakanri.create')->middleware('auth');
Route::post('/syukkakanris/store/', 'App\Http\Controllers\SyukkakanriController@store')->name('syukkakanri.store')->middleware('auth');
Route::get('/syukkakanris/edit/{syukkakanri}', 'App\Http\Controllers\SyukkakanriController@edit')->name('syukkakanri.edit')->middleware('auth');
Route::put('/syukkakanris/edit/{syukkakanri}', 'App\Http\Controllers\SyukkakanriController@update')->name('syukkakanri.update')->middleware('auth');
Route::get('/syukkakanris/show/{syukkakanri}', 'App\Http\Controllers\SyukkakanriController@show')->name('syukkakanri.show');
Route::delete('/syukkakanris/{syukkakanri}','App\Http\Controllers\SyukkakanriController@destroy')->name('syukkakanri.destroy')->middleware('auth');

Route::post('/syukkakanris/ajax', 'App\Http\Controllers\AjaxController@ajax');
