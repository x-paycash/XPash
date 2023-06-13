<?php

namespace App\Http\Controllers\Admin;

use App\Models\{
    Setting,
    Currency,
    ReferralLevel
};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Config, Validator, Common;

class ReferralSettingController extends Controller
{
    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    /**
     * Method referralPreferenceSettings
     *
     * @param Request $request [explicite description]
     *
     * @return void
     */
    public function referralPreferenceSettings(Request $request)
    {
        if (!$request->isMethod('post')) {
            $data['menu'] = 'settings';
            $data['settings_menu'] = 'referral_settings';

            $data['activeCurrencies']    = Currency::where(['status' => 'Active'])->get(['id', 'code']);

            $referralPreferences         = Setting::where(['type' => 'referral'])->whereIn('name', ['referral_currency', 'is_referral_enabled', 'min_referral_amount'])->get(['value', 'name'])->toArray();
            $referralPreferences         = $this->helper->key_value('name', 'value', $referralPreferences);
            $data['is_referral_enabled'] = isset($referralPreferences['is_referral_enabled']) ? $referralPreferences['is_referral_enabled'] : '';
            $data['referral_currency']   = isset($referralPreferences['referral_currency']) ? $referralPreferences['referral_currency'] : '';
            $data['min_referral_amount'] = isset($referralPreferences['min_referral_amount']) ? $referralPreferences['min_referral_amount'] : '';

            return view('admin.referral_settings.referral-preference', $data);
        } else if ($request->isMethod('post')) {
            Setting::where(['name' => 'is_referral_enabled', 'type' => 'referral'])->update(['value' => $request->is_referral_enabled]);
            Setting::where(['name' => 'referral_currency', 'type' => 'referral'])->update(['value' => $request->referral_currency]);
            Setting::where(['name' => 'min_referral_amount', 'type' => 'referral'])->update(['value' => $request->min_referral_amount]);

            $this->helper->one_time_message('success', 'Referral Preferences Updated Successfully');
            return redirect(Config::get('adminPrefix') . '/settings/referral-preferences');
        }
    }

    /**
     * Method referralSettings
     *
     * @return void
     */
    public function referralSettings()
    {
        $data['menu']                     = 'settings';
        $data['settings_menu']            = 'referral_settings';
        $data['referralLevelsStatus']     = ReferralLevel::groupBy('status')->get(['status']);
        $data['referralLevelsCurrencies'] = ReferralLevel::with('currency:id,name')->groupBy('currency_id')->get(['currency_id']);

        //Status Filtering
        $data['status']   = $status   = isset(request()->status) ? request()->status : 'Active';
        $data['currency'] = $currency = isset(request()->currency) ? request()->currency : 'all';

        $referralLevels   = ReferralLevel::with('currency:id,code,status,name');

        if ($status != 'all') {
            $referralLevels->where(['status' => $status]);
        }
        if ($currency != 'all') {
            $referralLevels->where(['currency_id' => $currency]);
        }
        $data['referralLevels'] = $referralLevels = $referralLevels->orderBy('priority', 'asc')->orderBy('status', 'asc')->get();

        //To make latest currency as selected in - Mass Update
        $data['referralLevelCurrency'] = ReferralLevel::with('currency:id,code,status,name')->latest()->first(['currency_id']);

        $data['activeCurrencies'] = Currency::where(['status' => 'Active'])->get(['id', 'name']);
        $data['defaultCurrency']  = Currency::where(['default' => '1'])->first(['id', 'name']);


        return view('admin.referral_settings.list', $data);
    }

    /**
     * Method add
     *
     * @param Request $request [explicite description]
     *
     * @return void
     */
    public function add(Request $request)
    {
        if (!$request->isMethod('post')) {
            $data['menu']             = 'settings';
            $data['settings_menu']    = 'referral_settings';
            $data['referralLevel']    = $referralLevel    = ReferralLevel::where(['status' => 'Active'])->orderBy('priority', 'desc')->first();

            $data['activeCurrencies'] = Currency::where(['status' => 'Active'])->get(['id', 'code']);

            $data['defaultCurrency']  = Currency::where(['default' => '1'])->first(['id']);
            return view('admin.referral_settings.add', $data);
        } else if ($request->isMethod('post')) {
            $rules = array(
                'level'  => 'required|unique:referral_levels,level',
                'level'  => 'required',
                'amount' => 'required|numeric',
            );

            $fieldNames = array(
                'level'  => 'Level',
                'amount' => 'Amount',
            );

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {
                $referralLevel              = new ReferralLevel();
                $referralLevel->level       = $request->level;
                $referralLevel->amount      = $request->amount;
                $referralLevel->currency_id = $request->currency_id;
                $referralLevel->priority    = $request->priority;
                $referralLevel->status      = 'Active';
                $referralLevel->save();

                $this->helper->one_time_message('success', 'Referral Setting Added Successfully');
                return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
            }
        } else {
            return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
        }
    }

    /**
     * Method updateReferralSetting
     *
     * @param Request $request [explicite description]
     *
     * @return void
     */
    public function updateReferralSetting(Request $request)
    {
        if (!$request->isMethod('post')) {
            $data['menu']          = 'settings';
            $data['settings_menu'] = 'referral_settings';
            $data['referralLevel'] = ReferralLevel::find($request->id);

            return view('admin.referral_settings.edit', $data);
        } else if ($request->isMethod('post')) {
            //Backend Validation Check
            $request['referral_id'] = $request->referral_id;
            $request['level']       = $request->level;
            $checkDuplicateLevel    = $this->checkDuplicateLevel($request);
            $checkDuplicateLevel    = json_decode($checkDuplicateLevel, true);
            if ($checkDuplicateLevel['status'] == true) {
                $this->helper->one_time_message('error', $checkDuplicateLevel['message']);
                return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
            }

            $rules = array(
                'level'  => 'required',
                'amount' => 'required|numeric',
            );

            $fieldNames = array(
                'level'  => 'Level',
                'amount' => 'Amount',
            );

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            } else {
                $findReferralLevel = ReferralLevel::find($request->referral_id);

                if ($request->status == 'Active' && $findReferralLevel->status == 'Inactive') {
                    //get active referral levels
                    $referralLevels = ReferralLevel::where(['status' => 'Active'])->get();
                    foreach ($referralLevels as $refLevl) {
                        //Referral Level Duplicate Check
                        if (trim($request->level) == trim($refLevl->level)) {
                            $this->helper->one_time_message('error', 'Referral Level Already Exists!');
                            return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
                        }

                        //if destination currency priority > destination current priority
                        if ($refLevl->priority > $request->priority) {
                            //Update/Increment active referral levels priority
                            $refLevl->priority = ++$refLevl->priority;
                            $refLevl->save();
                        }
                        //Current Level entry - unchanged
                    }

                    // fetch Active Referral Level and Insert new active currency referral level - from inactive request currency referral level
                    $fetchActiveReferralLevel       = ReferralLevel::where(['status' => 'Active'])->orderBy('priority', 'desc')->first(['currency_id', 'priority']);
                    if (!empty($fetchActiveReferralLevel)) {
                        $newRefLvlInstance              = new ReferralLevel();
                        $newRefLvlInstance->level       = $request->level;
                        $newRefLvlInstance->amount      = $request->amount;
                        $newRefLvlInstance->currency_id = $fetchActiveReferralLevel->currency_id;
                        $newRefLvlInstance->priority    = ++$request->priority;
                        $newRefLvlInstance->status      = 'Active';
                        $newRefLvlInstance->save();
                    }
                } else {
                    $referralLevels = ReferralLevel::where(['status' => 'Active'])->get(['id']);
                    if (count($referralLevels) <= 1) {
                        $this->helper->one_time_message('error', 'Atleast one referral level setting must be active!');
                        return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
                    }

                    $findReferralLevel->level       = $request->level;
                    $findReferralLevel->amount      = $request->amount;
                    $findReferralLevel->currency_id = $request->currency_id;
                    $findReferralLevel->priority    = $request->priority;
                    $findReferralLevel->priority    = $request->priority;
                    $findReferralLevel->status      = $request->status;
                    $findReferralLevel->save();
                }
                $this->helper->one_time_message('success', 'Referral Setting Updated Successfully');
                return redirect(Config::get('adminPrefix') . '/settings/referral-settings');
            }
        }
    }

    /**
     * Method massUpdateReferralLevels
     *
     * @param Request $request [explicite description]
     *
     * @return void
     */
    public function massUpdateReferralLevels(Request $request)
    {
        $selectedCurrencyReferralLevels = ReferralLevel::where(['currency_id' => $request->selectedCurrencyId, 'status' => 'Active'])->get(['id']);

        //Check Selected Currency levels has collection or not
        if ($selectedCurrencyReferralLevels->isEmpty()) {
            //get Default Currency levels Collection
            $defaultCurrencyReferralLevels = ReferralLevel::where(['currency_id' => $request->defaultCurrencyId, 'status' => 'Active'])->orderBy('priority', 'ASC')->get();

            foreach ($defaultCurrencyReferralLevels as $refLevl) {
                //all defaul Currency level's status - set to Inactive
                $refLevl->status = 'Inactive';
                $refLevl->save();

                //Update all Currency level's status - except default Currency and selected Currency - to Inactive
                $getActiveStatusLevels = ReferralLevel::where(['status' => 'Active'])->where('currency_id', '!=', $request->defaultCurrencyId)->where('currency_id', '!=', $request->selectedCurrencyId)
                    ->get(['id', 'status']);
                foreach ($getActiveStatusLevels as $activeRefLevl) {
                    $activeRefLevl->status = 'Inactive';
                    $activeRefLevl->save();
                }

                //Mass Update - Replication/Creating Existing Values to New Selected Currency
                $newRefLvl              = new ReferralLevel();
                $newRefLvl->level       = $refLevl->level;
                $newRefLvl->amount      = $refLevl->amount;
                $newRefLvl->currency_id = $request->selectedCurrencyId;
                $newRefLvl->priority    = $refLevl->priority;
                $newRefLvl->status      = 'Active';
                $newRefLvl->save();
            }
            return response()->json([
                'status' => true,
            ]);
        } else {
            return response()->json([
                'status' => false,
            ]);
        }
    }

    /**
     * Method checkDuplicateLevel
     *
     * @param Request $request [explicite description]
     *
     * @return void
     */
    public function checkDuplicateLevel(Request $request)
    {
        $referral_id = $request->referral_id;
        if (isset($referral_id)) {
            $referralLevels = ReferralLevel::where(['level' => $request->level, 'status' => 'Active'])
                ->where(function ($q) use ($referral_id) {
                    $q->where('id', '!=', $referral_id);
                })
                ->orderBy('priority', 'ASC')->get();
        } else {
            $referralLevels = ReferralLevel::where(['level' => $request->level, 'status' => 'Active'])->orderBy('priority', 'ASC')->get();
        }

        if ($referralLevels->isNotEmpty()) {
            $data['status']  = true;
            $data['message'] = "The referral level already exists!";
        } else {
            $data['status']  = false;
            $data['message'] = "The referral level is Available!";
        }
        return json_encode($data);
    }
}
