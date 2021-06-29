<?php

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

Route::group(['middleware' => 'cors'], function () {
  Route::post('/signUp', 'AuthController@create');
  Route::get('/Authorization/{id?}', 'TokenController@Authorization')->name('Authorization');
  Route::post('reset-password-link', 'Auth\ForgotPasswordController@getUserResetLinkEmail')->name('reset-password-link');
  Route::post('password.reset', 'Auth\ResetPasswordController@reset')->name('password.reset');
Route::get('/clear', 'TokenController@clearRoute');


//  Route::group(['middleware' => 'verified'], function () {
Route::group(['middleware' => 'auth.apikey'], function () {
//POST REQUEST
Route::post('/signin', 'AuthController@login');
Route::post('/logout', 'AuthController@logout');
Route::post('/refresh', 'TokenController@refresh');
Route::post('/me', 'TokenController@me');
// Route::post('/payload', 'TokenController@payload');
// Route::post('/invalidate', 'TokenController@invalidate');




//jwt authentication
Route::group(['middleware' => 'jwt.verify'], function () {

    /************* CUSTOMER PERMISSION ROUTE**************** */
  Route::group(['middleware'=>'check-permission:customer'], function () {
  //GET REQUEST


//POST REQUEST
Route::post('resend-verify-submit',['as'=>'resend-verify-submit','uses'=>'TokenController@resendEmail']);
Route::get('product/{id}',['as'=>'product','uses'=>'DashboardController@bidProduct_id']);
Route::put('user-update/{id}',['as'=>'user-update','uses'=>'UserController@updateUser']);
Route::post('bid/{id}',['as'=>'bid-product','uses'=>'DashboardController@bidProduct']);
Route::get('bids-won',['as'=>'bids-won','uses'=>'DashboardController@bidWon']);
//PUT REQUEST
  });

  /************* STAFF PERMISSION ROUTE**************** */
  Route::group(['middleware'=>'check-permission:staff'], function () {

    });


      /************* ADMIN PERMISSION ROUTE**************** */
    Route::group(['middleware'=>'check-permission:administrator'], function () {
      //GET REQUEST
      Route::get('bidswon',['as'=>'bidswon','uses'=>'AdminController@getALLbidWon']);

     //POST

Route::post('create_product',['as'=>'create-product','uses'=>'AdminController@createProduct']);
Route::post('activate-Bid/{id}',['as'=>'activate-Bid','uses'=>'DashboardController@activateBid']);
Route::post('delete-Activities',['as'=>'delete-Activities','uses'=>'DashboardController@deleteActivities']);

    });


      /************* STAFF AND ADMIN PERMISSION ROUTE**************** */
    Route::group(['middleware'=>'check-permission:staff|administrator'], function () {
//GET REQUEST
Route::get('get-user-info',['as'=>'get-user-info','uses'=>'DashboardController@getUserInfo']);
Route::get('get-user',['as'=>'get-user','uses'=>'DashboardController@validateQrcode']);
Route::get('all-activities',['as'=>'all-activities','uses'=>'DashboardController@getActivities']);
Route::get('active-activities',['as'=>'active-activities','uses'=>'DashboardController@getActiveActivities']);


//POST REQUEST
Route::post('create-activities', ['as'=>'create-activities','uses'=>'DashboardController@createActivities']);
Route::put('update-activities/{id}',['as'=>'update-activities','uses'=>'DashboardController@updateActivities']);
Route::put('add-user-wristband',['as'=>'add-user-wristband','uses'=>'DashboardController@addWristbandUser']);
    });


      /************* STAFF , ADMIN AND CUSTOMER PERMISSION ROUTE**************** */
    Route::group(['middleware'=>'check-permission:staff|customer|administrator'], function () {
      //GET REQUEST
      Route::get('fetch_product',['as'=>'fetch_product','uses'=>'DashboardController@getProducts']);
     Route::post('bid-timeout',['as'=>'bid-timeout','uses'=>'DashboardController@BIDtimeout']);

      //POST REQUEST
      Route::post('updatePassword', 'UserController@postChangePass')->name('updatePassword');


    });

});


});
});
// });
