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

Route::get('/', function(){
    return view('auth/login');
});
Route::get('home', function(){
    return vie('home');
});
Route::get('data_peminjam', function(){
    return view('peminjams/data_peminjam');
});

Route::get('lihat_data_peminjam', 'PeminjamController@lihat_data_peminjam');

Route::get('/peminjam', 'PeminjamController@index')->name('peminjam.index');

Route::get('peminjam/create', 'PeminjamController@create')->name('peminjam.create');

Route::post('peminjam', 'PeminjamController@store')->name('peminjam.store');

Route::get('peminjam/edit/{id}', 'PeminjamController@edit')->name('peminjam.edit');

Route::post('peminjam/update/{id}', 'PeminjamController@update')->name('peminjam.update');

Route::post('peminjam/delete/{id}', 'PeminjamController@destroy')->name('peminjam.destroy');

Route::get('coba_collection', 'PeminjamController@CobaCollection');

Route::get('collection_first', 'PeminjamController@collection_first');

Route::get('collection_last', 'PeminjamController@collection_last');

Route::get('collection_count', 'PeminjamController@collection_count');

Route::get('collection_take', 'PeminjamController@collection_take');

Route::get('collection_pluck', 'PeminjamController@collection_pluck');

Route::get('collection_where', 'PeminjamController@collection_where');

Route::get('collection_wherein', 'PeminjamController@collection_wherein');

Route::get('collection_toarray', 'PeminjamController@collection_toarray');

Route::get('collection_tojson', 'PeminjamController@collection_tojson');

Route::get('transaksi_peminjam', 'TransaksiPeminjamController@index')->name('transaksi_peminjam.index');
Route::get('transaksi_peminjam/create', 'TransaksiPeminjamController@create')->name ('transaksi_peminjam.create');
Route::post('transaksi_peminjam', 'TransaksiPeminjamController@store')->name('transaksi_peminjam.store');
Route::get('transaksi_peminjam/detail_peminjam/{id}', 'TransaksiPeminjamController@detail_peminjam')->name('transaksi_peminjam.detail_peminjam');
Route::get('transaksi_peminjam/detail_buku/{id}', 'TransaksiPeminjamController@detail_buku')->name('transaksi_peminjam.detail_buku');
Route::get('/peminjams/search', 'PeminjamController@search')->name('peminjams.search');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('user', 'UserController@index')->name('user.index');

Route::get('user/create', 'UserController@create')->name('user.create');

Route::post('user', 'UserController@store')->name('user.store');
Route::get('user/edit/{id}', 'UserController@edit')->name('user.edit');
Route::post('user/update/{id}', 'UserController@update')->name('user.update');
Route::post('user/delete/{id}', 'UserController@destroy')->name('user.destroy');

Route::get('buku', 'BukuController@index')->name('buku.index');

Route::get('buku/create', 'BukuController@index')->name('buku.create');

Route::post('buku', 'BukuController@store')->name('buku.store');

Route::get('buku/edit/{id}', 'BukuController@edit')->name('buku.edit');

Route::post('buku/update/{id}', 'BukuController@update')->name('buku.update');

Route::post('buku/delete/{id}', 'BukuController@destroy')->name('buku.destroy');


