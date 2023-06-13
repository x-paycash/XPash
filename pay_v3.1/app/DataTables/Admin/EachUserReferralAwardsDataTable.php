<?php

namespace App\DataTables\Admin;

use App\Models\ReferralAward;
use Auth, Config, Session, Common;
use Yajra\DataTables\Services\DataTable;

class EachUserReferralAwardsDataTable extends DataTable
{
    public function ajax()
    {
        return datatables()
            ->eloquent($this->query())
            ->editColumn('created_at', function ($referralAward) {
                return dateFormat($referralAward->created_at);
            })
            ->addColumn('currency_id', function ($referralAward) {
                return $referralAward->referral_level->currency->code;
            })
            ->addColumn('level', function ($referralAward) {
                return (isset($referralAward->referral_level->level) && !empty($referralAward->referral_level->level)) ? $referralAward->referral_level->level : '-';
            })
            ->addColumn('referred_to', function ($referralAward) {
                if (isset($referralAward->referredTo->id)) {
                    $referredToUser  = !empty($referralAward->referredTo->first_name) ? $referralAward->referredTo->first_name . ' ' . $referralAward->referredTo->last_name : "-";
                    return (Common::has_permission(Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url(Config::get('adminPrefix') . '/users/edit/' . $referralAward->referredTo->id) . '">' . $referredToUser . '</a>' : $referredToUser;
                }
                return '';
            })
            ->editColumn('awarded_amount', function ($referralAward) {
                if ($referralAward->awarded_amount > 0) {
                    $awarded_amount = '<td><span class="text-green">+' . formatNumber($referralAward->awarded_amount) . '</span></td>';
                    return $awarded_amount;
                }
                return '-';
            })
            ->rawColumns(['awarded_amount', 'referred_to'])
            ->make(true);
    }

    public function query()
    {
        $currency = isset(request()->currency) ? request()->currency : 'all';
        $user = isset(request()->user_id) ? request()->user_id : $this->user_id;
        $from = isset(request()->from) && !empty(request()->from) ? setDateForDb(request()->from) : null;
        $to = isset(request()->to) && !empty(request()->to) ? setDateForDb(request()->to) : null;
        $query = (new ReferralAward())->getReferralAwardsList($from, $to, $currency, $user);
        return $this->applyScopes($query);
    }

    public function html()
    {
        return $this->builder()
            ->addColumn(['data' => 'id', 'name' => 'referral_awards.id', 'title' => 'ID', 'searchable' => false, 'visible' => false])
            ->addColumn(['data' => 'referred_to', 'name' => 'referredTo.last_name', 'title' => 'Referred To', 'visible' => false])
            ->addColumn(['data' => 'created_at', 'name' => 'referral_awards.created_at', 'title' => 'Date'])
            ->addColumn(['data' => 'currency_id', 'name' => 'referral_level.currency.code', 'title' => 'Currency'])
            ->addColumn(['data' => 'level', 'name' => 'referral_level.level', 'title' => 'Referral Level'])
            ->addColumn(['data' => 'referred_to', 'name' => 'referredTo.first_name', 'title' => 'Referred To'])
            ->addColumn(['data' => 'awarded_amount', 'name' => 'referral_awards.awarded_amount', 'title' => 'Awarded Amount'])
            ->parameters(dataTableOptions());
    }
}
