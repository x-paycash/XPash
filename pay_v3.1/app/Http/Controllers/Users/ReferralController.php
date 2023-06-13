<?php

namespace App\Http\Controllers\Users;

use App\Models\{
    Setting,
    Currency,
    ReferralLevel,
    ReferralCode
};
use Str, Common;
use App\Http\Controllers\Controller;

class ReferralController extends Controller
{
    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    public function referFriend()
    {
        $data['menu'] = 'refer';

        $referralLevel = ReferralLevel::with('currency:id,symbol')->where(['status' => 'Active'])->orderBy('priority', 'asc')->first(['currency_id', 'amount']);
        if (empty($referralLevel)) {
            return redirect('/dashboard');
        }
        if (!empty($referralLevel) && !empty(auth()->user()->referral_code)) {
            $data['referralLevel'] = $referralLevel;
        } else {
            $referralCode = $this->saveReferralCode(auth()->user()->id);
            $data['referralLevel'] = $referralLevel;
            $data['referralCode']  = $referralCode;
        }

        $data['company_name'] = getCompanyName();

        $referralPreferences = Setting::where(['type' => 'referral'])->whereIn('name', ['referral_currency', 'min_referral_amount'])->get(['value', 'name'])->toArray();
        $referralPreferences = $this->helper->key_value('name', 'value', $referralPreferences);

        $data['min_referral_amount'] = isset($referralPreferences['min_referral_amount']) ? $referralPreferences['min_referral_amount'] : '';
        $data['referralPreferenceCurrency'] = Currency::where(['id' => $referralPreferences['referral_currency'], 'status' => 'Active'])->first(['symbol']);
        return view('user_dashboard.refer-friend.index', $data);
    }

    protected function saveReferralCode($user_id)
    {
        $referralCode = new ReferralCode();
        $referralCode->user_id = $user_id;
        $referralCode->code = Str::random(30);
        $referralCode->status = 'Active';
        $referralCode->save();

        return $referralCode->code;
    }
}
