<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MobileMoney extends Model
{
	protected $table = "mobile_moneys";
	protected $fillable = ['currency_id', 'admin_id', 'file_id', 'country_id', 'mobilemoney_name', 'holder_name', 'merchant_code', 'is_default'];

	public function admin()
	{
	    return $this->belongsTo(Admin::class, 'admin_id');
	}

	public function country()
	{
	    return $this->belongsTo(Country::class, 'country_id');
	}

	public function currency()
	{
	    return $this->belongsTo(Currency::class, 'currency_id');
	}

	public function file()
	{
	    return $this->belongsTo(File::class, 'file_id');
	}

	public function payoutSettings()
	{
	    return $this->hasMany(PayoutSetting::class, 'vendor');
	}

	public static function getMobileMoneyLists($mobileMoneys, $currencyPaymentMethods)
	{
		$selectedMobileMoneys = [];
        $i             = 0;

		foreach ($mobileMoneys as $mobileMoney)
        {
            foreach ($currencyPaymentMethods as $cpm)
            {
                if ($mobileMoney->id == json_decode($cpm->method_data)->mobilemoney_id)
                {
                    $selectedMobileMoneys[$i]['id']               = $mobileMoney->id;
                    $selectedMobileMoneys[$i]['mobilemoney_name'] = $mobileMoney->mobilemoney_name;
                    $selectedMobileMoneys[$i]['holder_name']      = $mobileMoney->holder_name;
                    $selectedMobileMoneys[$i]['merchant_code']    = $mobileMoney->merchant_code;
                    $selectedMobileMoneys[$i]['is_default']       = $mobileMoney->is_default;
                    $selectedMobileMoneys[$i]['status']           = $mobileMoney->status;

                    $selectedMobileMoneys[$i]['activated_for']    = $cpm->activated_for;
                    $i++;
                }
            }
        }
        return $selectedMobileMoneys;
	}

	public static function add(array $fields)
	{
		return MobileMoney::create($fields);
	}

	public static function updateMobileMoney(array $conditions, array $updates)
	{
		$mobileMoney = MobileMoney::where($conditions)->first();

		$mobileMoney->update($updates);

		return $mobileMoney;
	}
}
