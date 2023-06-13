<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\Admin\ReferralAwardsDataTable;
use App\Http\Controllers\Controller;
use App\Models\ReferralAward;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ReferralAwardsExport;

class ReferralAwardController extends Controller
{
    protected $referralAward;

    public function __construct()
    {
        $this->referralAward = new ReferralAward();
    }

    public function index(ReferralAwardsDataTable $dataTable)
    {
        $data['menu'] = 'referral-awards';

        $referralAwardsLevels = $this->referralAward->with(['referral_level:id,currency_id'])->groupBy('referral_level_id')->get(['referral_level_id']);
        if ($referralAwardsLevels->count() > 0) {
            foreach ($referralAwardsLevels as $referralAwardsLevel) {
                $data['referralAwardsLevels'] = $referralAwardsLevel->referral_level()->groupBy('currency_id')->get(['currency_id']);
            }
        }

        $data['currency'] = isset(request()->currency) ? request()->currency : 'all';
        $data['user'] = $user = isset(request()->user_id) ? request()->user_id : null;
        $data['from'] = isset(request()->from) && !empty(request()->from) ? setDateForDb(request()->from) : null;
        $data['to'] = isset(request()->to) && !empty(request()->to) ? setDateForDb(request()->to) : null;
        $data['getAwardedUserName'] = $this->referralAward->getAwardedUserName($user);

        return $dataTable->render('admin.referral_awards.list', $data);
    }

    public function referralAwardCsv()
    {
        return Excel::download(new ReferralAwardsExport(), 'referral_awards_list_' . time() . '.xlsx');
    }

    public function referralAwardPdf()
    {
        $data['company_logo'] = getCompanyLogoWithoutSession();
        $from                 = !empty(request()->startfrom) ? setDateForDb(request()->startfrom) : null;
        $to                   = !empty(request()->endto) ? setDateForDb(request()->endto) : null;
        $currency             = isset(request()->currency) ? request()->currency : null;
        $user                 = isset(request()->user_id) ? request()->user_id : null;

        $data['referralAwards'] = $this->referralAward->getReferralAwardsList($from, $to, $currency, $user)->get();
        if (isset($from) && isset($to)) {
            $data['date_range'] = $from . ' To ' . $to;
        } else {
            $data['date_range'] = 'N/A';
        }
        $mpdf = new \Mpdf\Mpdf(['tempDir' => __DIR__ . '/tmp']);
        $mpdf = new \Mpdf\Mpdf([
            'mode'        => 'utf-8',
            'format'      => 'A3',
            'orientation' => 'P',
        ]);
        $mpdf->autoScriptToLang         = true;
        $mpdf->autoLangToFont           = true;
        $mpdf->allow_charset_conversion = false;
        $mpdf->WriteHTML(view('admin.referral_awards.referral_awards_report_pdf', $data));
        $mpdf->Output('referral_awards_report_' . time() . '.pdf', 'D');
    }

    public function referralAwardUserSearch(Request $request)
    {
        $search = $request->search;
        $user   = $this->referralAward->getReferralAwardsUsersResponse($search);

        $res = [
            'status' => 'fail',
        ];
        if (count($user) > 0) {
            $res = [
                'status' => 'success',
                'data'   => $user,
            ];
        }
        return json_encode($res);
    }
}
