<?php

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

/*Route::get('/', function () {
    return view('welcome');
});*/


Route::get('/', function () {
    return view('Auth.register');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('estado_civil', 'EstadoCivilController');
Route::resource('genero', 'GeneroController');
Route::resource('educacion', 'EducacionController');
Route::resource('nivel_interes', 'NivelInteresController');

