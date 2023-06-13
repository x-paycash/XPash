<?php

Route::group(['namespace' => 'Api', 'middleware' => ['check-authorization-token']], function ()
{
    //refer-friend
    Route::get('refer-friend', 'ReferralApiController@referFriendApi');
});