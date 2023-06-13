<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
	protected $table = 'settings';
	protected $fillable = ['name', 'value', 'type'];
    public $timestamps = false;

    public function getSingleSetting($constraints, $selectOptions)
    {
        return $this->where($constraints)->first($selectOptions);
    }

    public static function isMiningReferralEnabled() 
    {
        if (config('referral.is_active')) {
            $value = self::where(['name' => 'is_referral_enabled', 'type' => 'referral'])->first(['value'])->value;
            return $value == 'yes' ? true : false;
        }
        return false;
    }
}
