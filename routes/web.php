<?php

Auth::routes();


Route::get('/home', function(){
	return redirect()->route('home');
});
Route::get('/', 'HomeController@index')->name('home');

// your routes here

Route::group(['prefix' => 'admin'], function () {
	Voyager::routes();
    Route::group(['middleware' => 'admin.user'], function(){
        Route::get('/clear_cache', function() {
            Artisan::call('cache:clear');
            return redirect()->route('voyager.dashboard')->with('message','Кэш сайта успешно очищен!');
        });
    });
});

// page must be last
Route::get('{slug}','PagesController@show')->name('page.show');