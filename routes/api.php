<?php

Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');

    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
    });
});

Route::get('getProviders', 'ProviderController@getAllProviders');

Route::get('getReserves/{id}', 'ReserveController@getAllReserves');

Route::get('deleteReserve/{id}', 'ReserveController@deleteReserve');

Route::get('getUsersReserves/{provider_id}', 'ReserveController@getAllUsersReserve');

Route::post('reserve', 'ReserveController@reserve');

Route::get('/send', 'HomeController@send');

Route::get('sendAccept/{id}', 'HomeController@sendAcceptNotification');

Route::get('sendDecline/{id}', 'HomeController@sendDeclineNotification');