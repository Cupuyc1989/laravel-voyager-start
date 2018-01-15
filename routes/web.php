<?php

Auth::routes();


Route::get('/home', function(){
    return redirect()->route('home');
});
Route::get('/', 'HomeController@index')->name('home');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('{slug}','PagesController@show')->name('page');