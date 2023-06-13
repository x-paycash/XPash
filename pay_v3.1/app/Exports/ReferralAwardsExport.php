<?php

namespace App\Exports;

use App\Models\ReferralAward;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithStyles;

class ReferralAwardsExport implements FromQuery, WithHeadings, WithMapping, ShouldAutoSize, WithStyles
{
    public function query()
    {
        $from     = !empty(request()->startfrom) ? setDateForDb(request()->startfrom) : null;
        $to       = !empty(request()->endto) ? setDateForDb(request()->endto) : null;
        $currency = isset(request()->currency) ? request()->currency : null;
        $user     = isset(request()->user_id) ? request()->user_id : null;
        $referralAwards = (new ReferralAward())->getReferralAwardsList($from, $to, $currency, $user)->orderBy('id', 'desc');
        return $referralAwards;
    }

    public function headings(): array
    {
        return ['Date', 'User', 'Currency', 'Referral Level', 'Awarded Amount', 'Referral Code'];
    }

    public function map($referralAwards): array
    {
        return [
            dateFormat($referralAwards->created_at),
            isset($referralAwards->awarded_user) ? $referralAwards->awarded_user->first_name . ' ' . $referralAwards->awarded_user->last_name : "-",
            $referralAwards->referral_level->currency->code,
            $referralAwards->referral_level->level,
            formatNumber($referralAwards->awarded_amount),
            $referralAwards->referral_code->code
        ];
    }

    public function styles($transfer)
    {
        $transfer->getStyle('A:B')->getAlignment()->setHorizontal('center');
        $transfer->getStyle('C:D')->getAlignment()->setHorizontal('center');
        $transfer->getStyle('E:F')->getAlignment()->setHorizontal('center');
        $transfer->getStyle('G:H')->getAlignment()->setHorizontal('center');
        $transfer->getStyle('1')->getFont()->setBold(true);
    }
}
