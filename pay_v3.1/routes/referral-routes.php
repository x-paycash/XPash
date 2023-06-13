<?php

Route::group(['prefix' => Config::get('adminPrefix'), 'namespace' => 'Admin', 'middleware' => ['guest:admin', 'locale', 'ip_middleware']], function () {
    Route::group(['middleware' => ['check-enabled-currencies-preference']], function () {
        // Referral Settings
        Route::get('settings/referral-settings', 'ReferralSettingController@referralSettings')->middleware(['permission:view_referral_settings']);
        Route::match(array('GET', 'POST'), 'settings/referral-preferences', 'ReferralSettingController@referralPreferenceSettings');
        Route::match(array('GET', 'POST'), 'settings/add-referral-setting', 'ReferralSettingController@add')->middleware(['permission:add_referral_settings']);
        Route::match(array('GET', 'POST'), 'settings/edit-referral-setting/{id}', 'ReferralSettingController@updateReferralSetting')->middleware(['permission:edit_referral_settings']);
        Route::get('settings/referral-settings/mass-update-referral-levels', 'ReferralSettingController@massUpdateReferralLevels')->middleware(['permission:edit_referral_settings']);
        Route::post('settings/referral-settings/check-duplicate-level', 'ReferralSettingController@checkDuplicateLevel')->middleware(['permission:add_referral_settings']);

        Route::get('users/referral-awards/{id}', 'UserController@eachUserReferralAwards');

        Route::get('referral-awards', 'ReferralAwardController@index')->middleware(['permission:view_referral_award']);
        Route::get('referral-awards/user_search', 'ReferralAwardController@referralAwardUserSearch');
        Route::get('referral-awards/csv', 'ReferralAwardController@referralAwardCsv');
        Route::get('referral-awards/pdf', 'ReferralAwardController@referralAwardPdf');
    });
});
Route::group(['middleware' => ['no_auth:users', 'locale']], function () {
    Route::get('/referral-link/{code}', 'Auth\RegisterController@checkReferralLink');
});

// Unauthenticated User
Route::group(['middleware' => ['no_auth:users', 'locale']], function () {
    Route::get('/referral-link/{code}', 'Auth\RegisterController@checkReferralLink');
});

// Authenticated User
Route::group(['middleware' => ['guest:users', 'locale', 'twoFa', 'check-user-inactive'], 'namespace' => 'Users'], function () {
    Route::get('/refer-friend', 'ReferralController@referFriend');

    // transactions
    Route::group(['middleware' => ['permission:manage_transaction']], function () {
        Route::get('transactions/referral-award-print/{id}', 'UserTransactionController@referralAwardTransactionPrintPdf');
    });
});
