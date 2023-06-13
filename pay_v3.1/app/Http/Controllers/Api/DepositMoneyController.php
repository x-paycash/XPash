<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\{
    DB, 
    Validator
};
use Illuminate\Http\Request;
use App\Http\Helpers\Common;
use App\Models\{PaymentMethod,
    CurrencyPaymentMethod,
    Transaction,
    FeesLimit,
    Currency,
    Setting,
    Deposit,
    Wallet,
    Bank,
    File,
    MobileMoney
};
use Exception;
use App\Repositories\{StripeRepository};
class DepositMoneyController extends Controller
{
    public $successStatus      = 200;
    public $unauthorisedStatus = 401;
    protected $helper;
    protected $stripeRepository;

    public function __construct()
    {
        $this->helper  = new Common();
        $this->stripeRepository = new StripeRepository();
    }

    //Deposit Money Starts here
    public function getDepositCurrencyList()
    {
        $activeCurrency                     = Currency::where(['status' => 'Active'])->get(['id', 'code', 'status']);
        $feesLimitCurrency                  = FeesLimit::where(['transaction_type_id' => Deposit, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);

        //Set default wallet as selected - starts
        $defaultWallet                      = Wallet::where(['user_id' => request('user_id'), 'is_default' => 'Yes'])->first(['currency_id']);
        $success['defaultWalletCurrencyId'] = $defaultWallet->currency_id;
        //Set default wallet as selected - ends

        $success['currencies']              = $this->currencyList($activeCurrency, $feesLimitCurrency);
        $success['status']                  = $this->successStatus;
        return response()->json(['success' => $success], $this->successStatus);
    }

    //Extended function - 1
    public function currencyList($activeCurrency, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        foreach ($activeCurrency as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $aCurrency->status == 'Active' && $flCurrency->has_transaction == 'Yes')
                {
                    $selectedCurrency[$aCurrency->id]['id']   = $aCurrency->id;
                    $selectedCurrency[$aCurrency->id]['code'] = $aCurrency->code;
                }
            }
        }
        return $selectedCurrency;
    }

    //getMatchedFeesLimitsCurrencyPaymentMethodsSettingsPaymentMethods
    public function getDepositMatchedFeesLimitsCurrencyPaymentMethodsSettingsPaymentMethods(Request $request)
    {
        $feesLimits = FeesLimit::whereHas('currency', function($q)
        {
            $q->where('status','=','Active');
        })
        ->whereHas('payment_method', function($q)
        {
            $q->whereIn('name', ['Stripe', 'Paypal', 'Bank', 'Flexpay'])->where('status','=','Active');
        })
        ->where(['transaction_type_id' => $request->transaction_type_id, 'has_transaction' => 'Yes', 'currency_id' => $request->currency_id])
        ->get(['payment_method_id']);

        $currencyPaymentMethods                       = CurrencyPaymentMethod::where('currency_id', $request->currency_id)->where('activated_for', 'like', "%deposit%")->get(['method_id']);
        $currencyPaymentMethodFeesLimitCurrenciesList = $this->currencyPaymentMethodFeesLimitCurrencies($feesLimits, $currencyPaymentMethods);
        $success['paymentMethods']                    = $currencyPaymentMethodFeesLimitCurrenciesList;
        $success['status']                            = $this->successStatus;
        return response()->json(['success' => $success], $this->successStatus);
    }

    //Extended function - 2
    public function currencyPaymentMethodFeesLimitCurrencies($feesLimits, $currencyPaymentMethods)
    {
        $selectedCurrencies = [];
        foreach ($feesLimits as $feesLimit)
        {
            foreach ($currencyPaymentMethods as $currencyPaymentMethod)
            {
                if ($feesLimit->payment_method_id == $currencyPaymentMethod->method_id)
                {
                    $selectedCurrencies[$feesLimit->payment_method_id]['id']   = $feesLimit->payment_method_id;
                    $selectedCurrencies[$feesLimit->payment_method_id]['name'] = $feesLimit->payment_method->name;
                }
            }
        }
        return $selectedCurrencies;
    }

    public function getDepositDetailsWithAmountLimitCheck()
    {
        $user_id         = (int )request('user_id');
        $amount          = (double) request('amount');
        $currency_id     = request('currency_id');
        $paymentMethodId = (int) request('paymentMethodId');
        $success['paymentMethodName'] = PaymentMethod::where('id', $paymentMethodId)->first(['name'])->name;
        $wallets                      = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first(['balance']);
        
        $feesDetails = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currency_id, 'payment_method_id' => $paymentMethodId])
            ->first(['charge_percentage', 'charge_fixed', 'min_limit', 'max_limit', 'currency_id']);
        if (@$feesDetails->max_limit == null) {
            $success['status'] = 200;
            if ((@$amount < @$feesDetails->min_limit)) {
                $success['reason']   = 'minLimit';
                $success['minLimit'] = @$feesDetails->min_limit;
                $success['message']  = 'Minimum amount ' . formatNumber(@$feesDetails->min_limit);
                $success['status']   = '401';
                return response()->json(['success' => $success]);
            }
        } else {
            $success['status'] = 200;
            if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit)) {
                $success['reason']   = 'minMaxLimit';
                $success['minLimit'] = @$feesDetails->min_limit;
                $success['maxLimit'] = @$feesDetails->max_limit;
                $success['message']  = 'Minimum amount ' . formatNumber(@$feesDetails->min_limit) . ' and Maximum amount ' . formatNumber(@$feesDetails->max_limit);
                $success['status']   = '401';
                return response()->json(['success' => $success]);
            }
        }
        //Code for Amount Limit ends here

        //Code for Fees Limit Starts here
        if (empty($feesDetails)) {
            $success['message'] = "ERROR";
            $success['status']  = 401;
        } else {
            $feesPercentage            = $amount * ($feesDetails->charge_percentage / 100);
            $feesFixed                 = $feesDetails->charge_fixed;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = $feesPercentage;
            $success['feesFixed']      = $feesFixed;
            $success['amount']         = $amount;
            $success['totalFees']      = $totalFess;
            $success['totalFeesHtml']  = formatNumber($totalFess);
            $success['currency_id']    = $feesDetails->currency_id;
            $success['currSymbol']     = $feesDetails->currency->symbol;
            $success['currCode']       = $feesDetails->currency->code;
            $success['totalAmount']    = $totalAmount;
            $success['pFees']          = $feesDetails->charge_percentage;
            $success['fFees']          = $feesDetails->charge_fixed;
            $success['min']            = $feesDetails->min_limit;
            $success['max']            = $feesDetails->max_limit;
            $success['balance']        = @$wallets->balance ? @$wallets->balance : 0;
            $success['status']         = 200;
        }
        return response()->json(['success' => $success]);
    }

    public function stripeMakePayment(Request $request)
    {
        $data = [];
        $data['status']  = 200;
        $data['message'] = "Success";
        $validation = Validator::make($request->all(), [
            'cardNumber'  => 'required',
            'month'       => 'required|digits_between:1,12|numeric',
            'year'        => 'required|numeric',
            'cvc'         => 'required|numeric',
            'amount'      => 'required|numeric',
            'totalAmount' => 'required|numeric',
            'currency_id' => 'required',
            'payment_method_id' => 'required',
        ]);
        if ($validation->fails()) {
            $data['message'] = $validation->errors()->first();
            $data['status']  = 401;
            return response()->json(['success' => $data]);
        }
        $sessionValue['totalAmount'] = (double) request('totalAmount');
        $sessionValue['amount']      = (double) request('amount');
        $amount            = (double) $sessionValue['totalAmount'];
        $payment_method_id = $method_id = (int) request('payment_method_id');
        $currencyId        = (int) request('currency_id');
        $currency          = Currency::find($currencyId, ["id", "code"]);
        $currencyPaymentMethod     = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $method_id])->where('activated_for', 'like', "%deposit%")->first(['method_data']);
        $methodData        = json_decode($currencyPaymentMethod->method_data);
        $secretKey         = $methodData->secret_key;
        if (!isset($secretKey)) {
            $data['message']  = __("Payment gateway credentials not found!");
            $data['status']  = 401;
            return response()->json(['success' => $data]);
        }
        $response = $this->stripeRepository->makePayment($secretKey, round($amount, 2), strtolower($currency->code), $request->cardNumber, $request->month, $request->year, $request->cvc);
        if ($response->getData()->status != 200) {
            $data['status']  = $response->getData()->status;
            $data['message'] = $response->getData()->message;
        } else {
            $data['paymentIntendId'] = $response->getData()->paymentIntendId;
            $data['paymentMethodId'] = $response->getData()->paymentMethodId;
        }
        return response()->json(['success' => $data]);
    }
    
    public function flexpayMakePayment(Request $request)
    {
        $data = [];
        $data['status']  = 200;
        $data['message'] = "Success";
        $validation = Validator::make($request->all(), [
            'phone'  => 'required',
            'amount' => 'required|numeric',
            'currency_id' => 'required',
            'payment_method_id' => 'required',
            'currency_code' => 'required',
            'fees' => 'required',
            'user_id' => 'required'
        ]);

        if ($validation->fails()) {
            $data['message'] = $validation->errors()->first();
            $data['status']  = 401;
            return response()->json(['success' => $data]);
        }

        $cpm = CurrencyPaymentMethod::where(['currency_id' => $request->currency_id, 'method_id' => $request->payment_method_id])->where('activated_for', 'like', "%deposit%")->first('method_data');
        
        if (empty($cpm)) {
            $data['message'] = 'Payment method was not found';
            $data['status']  = 400;
            return response()->json(['success' => $data]);
        }
        
        $cpm = json_decode($cpm->method_data);

        $feesLimit = FeesLimit::where(['currency_id' => $request->currency_id, 'transaction_type_id' => Deposit, 'payment_method_id' => $request->payment_method_id, 'has_transaction' => 'Yes'])->first(['charge_percentage', 'charge_fixed', 'min_limit']);

        if (empty($feesLimit)) {
            $data['message'] = 'Fees limit is not activated. Please contact to the admin';
            $data['status']  = 400;
            return response()->json(['success' => $data]);
        }

        if ($request->amount < $feesLimit->min_limit) {
            $data['message'] = 'Minimum limit is '.$feesLimit->min_limit;
            $data['status']  = 400;
            return response()->json(['success' => $data]);
        }

        $uuid = unique_code();
        $data = array(
            "merchant" => $cpm->merchant_code,
            "type" => "1",
            "phone"=> $request->phone,
            "reference" => $uuid,
            "amount" => $request->amount,
            "currency" => $request->currency_code,
            "callbackUrl" => url('/confirm-flexpay')
        ); 
        $data = json_encode($data);

        $response = $this->initiateFlexpayPayment($data, $cpm);
        if ($response->getData()->success->status == 200) {
            try {
                $sessionValue['totalAmount'] = $request->amount;
                $sessionValue['amount'] = $request->amount - $request->fees;
                $deposit = Deposit::success($request->currency_id, $request->payment_method_id, $request->user_id, $sessionValue, 'pending', $uuid);
                $res = [];
                $res['message'] = 'Successfully deposited. Please wait for the confirmation';
                $res['status'] = 200;
                return response()->json(['success' => $res]);
            } catch (\Exception $e) {
                $res = [];
                $res['message'] = $response->getMessage();
                $res['status'] = 400;
                return response()->json(['success' => $res]);
            }
        } else {
            $res = [];
            $res['message'] = $response->getData()->success->message;
            $res['status'] = $response->getData()->success->status;
            return response()->json(['success' => $res]);
        }
    }

    public function initiateFlexpayPayment($data, $cpm)
    {
        $gateway = "http://41.243.7.46:3006/api/rest/v1/paymentService";
        $ch = curl_init($gateway);
        curl_setopt($ch, CURLOPT_URL, $gateway);
        curl_setopt($ch, CURLOPT_POST, true);
        $headers = Array(
            "Content-Type: application/json",
            "Authorization: Bearer ".$cpm->authorization_token);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 300);
        $response = curl_exec($ch);

        $data = [];
        curl_close($ch);
        if (!empty($response)) {
            $jsonRes = json_decode($response);
            $code = $jsonRes->code;
            if ($code != "0") {
                $data['message'] = $jsonRes->message;
                $data['status']  = $jsonRes->code;
                return response()->json(['success' => $data]);
            } else {
                $data['message'] = $jsonRes->message;
                $data['order_number'] = $jsonRes->orderNumber;
                $data['status']  = 200;
                return response()->json(['success' => $data]);
            }
        } else {
            $data = [];
            $data['message'] = 'No response found from the Flexpay server';
            $data['status']  = 400;
            return response()->json(['success' => $data]);
        }
    }

    public function stripeConfirm(Request $request)
    {
        $data = [];
        $data['status']  = 401;
        $data['message'] = "Fail";
        try {
            DB::beginTransaction();
            $validation = Validator::make($request->all(), [
                'paymentIntendId'   => 'required',
                'paymentMethodId'   => 'required',
                'amount'            => 'required',
                'totalAmount'       => 'required',
                'currency_id'       => 'required',
                'payment_method_id' => 'required',
            ]);
            if ($validation->fails()) {
                $data['message'] = $validation->errors()->first();
                return response()->json(['success' => $data]);
            }
            $sessionValue['totalAmount'] = (double) request('totalAmount');
            $sessionValue['amount']      = (double) request('amount');
            $amount            = (double) $sessionValue['totalAmount'];
            $payment_method_id = $method_id = (int) request('payment_method_id');
            $currencyId        = (int) request('currency_id');
            $currency          = Currency::find($currencyId, ["id", "code"]);
            $currencyPaymentMethod     = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $method_id])->where('activated_for', 'like', "%deposit%")->first(['method_data']);
            $methodData        = json_decode($currencyPaymentMethod->method_data);
            $secretKey         = $methodData->secret_key;
            if (!isset($secretKey)) {
                $data['message']  = __("Payment gateway credentials not found!");
                return response()->json([
                    'data' => $data
                ]);
            }
            $response = $this->stripeRepository->paymentConfirm($secretKey, $request->paymentIntendId, $request->paymentMethodId);
            if ($response->getData()->status != 200) {
                $data['message'] = $response->getData()->message;
                return response()->json([
                    'data' => $data
                ]);
            }
            $user_id           = request('user_id');
            $wallet            = Wallet::where(['currency_id' => $currencyId, 'user_id' => $user_id])->first(['id', 'currency_id']);
            if (empty($wallet)) {
                $walletInstance = Wallet::createWallet($user_id, $sessionValue['currency_id']);
            }
            $currencyId = isset($wallet->currency_id) ? $wallet->currency_id : $walletInstance->currency_id;
            $currency   = Currency::find($currencyId, ['id', 'code']);

            $depositConfirm      = Deposit::success($currencyId, $payment_method_id, $user_id, $sessionValue);

            if (config('referral.is_active')) {
                $refAwardData                    = [];
                $refAwardData['userId']          = $user_id;
                $refAwardData['currencyId']      = $currencyId;
                $refAwardData['currencyCode']    = $currency->code;
                $refAwardData['presentAmount']   = $depositConfirm['transaction']->subtotal;
                $refAwardData['paymentMethodId'] = $payment_method_id;
                $this->helper->checkReferralAward($refAwardData);
            }

            DB::commit();
            $response            = $this->helper->sendTransactionNotificationToAdmin('deposit', ['data' => $depositConfirm['deposit']]);
            $data['status']      = 200;
            $data['message']     = "Success";
            return response()->json(['success' => $data]);
        } catch (Exception $e) {
            DB::rollBack();
            $data['message'] =  $e->getMessage();
            return response()->json(['success' => $data]);
        }
    }
    /**
     * Stripe Ends
     * @return [type] [description]
     */

    /**
     * Paypal Starts
     * @return [type] [description]
     */
    //Get Paypal Info
    public function getPeypalInfo()
    {
        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => request('currency_id'), 'method_id' => request('method_id')])
            ->where('activated_for', 'like', "%deposit%")
            ->first(['method_data']);

        if (empty($currencyPaymentMethod))
        {
            $success['message'] = __('Payment gateway credentials not found!');
            $success['status']  = 401;
        }
        else
        {
            $success['method_info'] = json_decode($currencyPaymentMethod->method_data);
            $success['status']      = 200;
            return response()->json(['success' => $success]);
        }
    }

    public function paypalSetup()
    {
        $numarr = func_num_args();
        if ($numarr > 0)
        {
            $clientID   = func_get_arg(0);
            $secret     = func_get_arg(1);
            $mode       = func_get_arg(2);
            $apicontext = new ApiContext(new OAuthTokenCredential($clientID, $secret));
            $apicontext->setConfig([
                'mode' => $mode,
            ]);
        }
        else
        {
            $credentials = Setting::where(['type' => 'PayPal'])->get();
            $clientID    = $credentials[0]->value;
            $secret      = $credentials[1]->value;
            $apicontext  = new ApiContext(new OAuthTokenCredential($clientID, $secret));
            $apicontext->setConfig([
                'mode' => $credentials[3]->value,
            ]);
        }

        return $apicontext;
    }

    //Deposit Confirm Post via Paypal
    public function paypalPaymentStore()
    {
        try {
            DB::beginTransaction();
            if (request('details')['status'] != "COMPLETED") {
                $success['status']  = 401;
                $success['message'] = __('Unsuccessful Transaction');
                return response()->json(['success' => $success]);
            }
            $amount            = (double) request('amount');
            $currency_id       = (int) request('currency_id');
            $payment_method_id = (int) request('paymentMethodId');
            $user_id           = (int) request('user_id');
            $uuid              = unique_code();
            $wallet            = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first(['id', 'balance']);
            if (empty($wallet)) {
                $walletInstance = Wallet::createWallet($user_id, $currency_id);
            }
            $calculatedFee = $this->getDepositDetailsWithAmountLimitCheck();
            $sessionValue['amount']      = $amount;
            $sessionValue['totalAmount'] = $amount + $calculatedFee->getData()->success->totalFees;
            $depositConfirm              = Deposit::success($currency_id, $payment_method_id, $user_id, $sessionValue);

            if (config('referral.is_active')) {
                $currency = Currency::where(['id' => $currency_id])->first('code');
                $refAwardData                    = [];
                $refAwardData['userId']          = $user_id;
                $refAwardData['currencyId']      = $currency_id;
                $refAwardData['currencyCode']    = $currency->code;
                $refAwardData['presentAmount']   = $depositConfirm['transaction']->subtotal;
                $refAwardData['paymentMethodId'] = $payment_method_id;
                $this->helper->checkReferralAward($refAwardData);
            }

            DB::commit();
            $this->helper->sendTransactionNotificationToAdmin('deposit', ['data' => $depositConfirm['deposit']]);
            $success['transaction'] = $depositConfirm['transaction'];
            $success['status']      = 200;
            return response()->json(['success' => $success]);
        } catch (Exception $e) {
            DB::rollBack();
            $success['status']  = $this->unauthorisedStatus;
            $success['message'] = $e->getMessage();
            return response()->json(['success' => $success], $this->unauthorisedStatus);
        }
    }

    /**
     * Paypal Ends
     * @return [type] [description]
     */

    /**
     * Bank Starts
     * @return [type] [description]
     */
    public function getDepositBankList()
    {
        $banks                  = Bank::where(['currency_id' => request('currency_id')])->get(['id', 'bank_name', 'is_default', 'account_name', 'account_number']);
        $currencyPaymentMethods = CurrencyPaymentMethod::where('currency_id', request('currency_id'))
            ->where('activated_for', 'like', "%deposit%")
            ->where('method_data', 'like', "%bank_id%")
            ->get(['method_data']);

        $bankList = $this->bankList($banks, $currencyPaymentMethods);
        if (empty($bankList))
        {
            $success['status']  = 401;
            $success['message'] = __('Banks Does Not Exist For Selected Currency!');
        }
        else
        {
            $success['status'] = $this->successStatus;
            $success['banks']  = $bankList;
        }
        return response()->json(['success' => $success], $this->successStatus);
    }

    public function bankList($banks, $currencyPaymentMethods)
    {
        $selectedBanks = [];
        $i             = 0;
        foreach ($banks as $bank)
        {
            foreach ($currencyPaymentMethods as $cpm)
            {
                if ($bank->id == json_decode($cpm->method_data)->bank_id)
                {
                    $selectedBanks[$i]['id']             = $bank->id;
                    $selectedBanks[$i]['bank_name']      = $bank->bank_name;
                    $selectedBanks[$i]['is_default']     = $bank->is_default;
                    $selectedBanks[$i]['account_name']   = $bank->account_name;
                    $selectedBanks[$i]['account_number'] = $bank->account_number;
                    $i++;
                }
            }
        }
        return $selectedBanks;
    }

    public function getBankDetails()
    {
        $bank = Bank::with('file:id,filename')->where(['id' => request('bank')])->first(['account_name', 'account_number', 'bank_name', 'file_id']);
        if ($bank)
        {
            $success['status'] = 200;
            $success['bank']   = $bank;
            if (!empty($bank->file_id))
            {
                $success['bank_logo'] = $bank->file->filename;
            }
        }
        else
        {
            $success['status'] = 401;
            $success['bank']   = "Bank Not Found!";
        }
        return response()->json(['success' => $success], $this->successStatus);
    }

    //Deposit Confirm Post via Bank
    public function bankPaymentStore()
    {
        try {
            DB::beginTransaction();
            $uid                  = (int)request('user_id');
            $uuid                 = unique_code();
            $deposit_payment_id   = (int) request('deposit_payment_id');
            $deposit_payment_name = request('deposit_payment_name');
            $currency_id          = (int) request('currency_id');
            $amount               = $sessionValue['amount'] = (double) request('amount');
            $bank_id              = (int) request('bank_id');
            $totalAmount          = $sessionValue['totalAmount'] = (double) request('amount') + (double) request('totalFees');
            $feeInfo              = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currency_id, 'payment_method_id' => $deposit_payment_id])->first(['charge_percentage', 'charge_fixed']);
            $feePercentage        = $amount * ($feeInfo->charge_percentage / 100);
            if ($deposit_payment_name == 'Bank') {
                if (request()->hasFile('file')) {
                    $fileName     = request()->file('file');
                    $originalName = $fileName->getClientOriginalName();
                    $uniqueName   = strtolower(time() . '.' . $fileName->getClientOriginalExtension());
                    $file_extn    = strtolower($fileName->getClientOriginalExtension());
                    $path         = 'uploads/files/bank_attached_files';
                    $uploadPath   = public_path($path);
                    $fileName->move($uploadPath, $uniqueName);

                    $file               = new File();
                    $file->user_id      = $uid;
                    $file->filename     = $uniqueName;
                    $file->originalname = $originalName;
                    $file->type         = $file_extn;
                    $file->save();
                }
            }
            $depositConfirm = Deposit::success($currency_id, $deposit_payment_id, $uid, $sessionValue, "Pending", "bank", $file->id, $bank_id);
            
            if (config('referral.is_active')) {
                $currency = Currency::where(['id' => $currency_id])->first('code');
                $refAwardData                    = [];
                $refAwardData['userId']          = $uid;
                $refAwardData['currencyId']      = $currency_id;
                $refAwardData['currencyCode']    = $currency->code;
                $refAwardData['presentAmount']   = $depositConfirm['transaction']->subtotal;
                $refAwardData['paymentMethodId'] = $deposit_payment_id;
                $this->helper->checkReferralAward($refAwardData);
            }

            DB::commit();
            $this->helper->sendTransactionNotificationToAdmin('deposit', ['data' => $depositConfirm['deposit']]);
            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success], $this->successStatus);
        } catch (Exception $e) {
            DB::rollBack();
            $success['status']  = $this->unauthorisedStatus;
            $success['message'] = $e->getMessage(); 
            return response()->json(['success' => $success], $this->unauthorisedStatus);
        }
    }
    /**
     * Bank Ends
     * @return [type] [description]
     */

    /**
     * [getDepositMobileMoneyList description]
     * @return [type] [description]
     */
    public function getDepositMobileMoneyList()
    {
        $mobileMoneys           = MobileMoney::where(['currency_id' => request('currency_id')])->get(['id', 'mobilemoney_name', 'is_default', 'holder_name', 'merchant_code']);
        $currencyPaymentMethods = CurrencyPaymentMethod::where('currency_id', request()->currency_id)->where('activated_for', 'like', "%deposit%")->where('method_data', 'like', "%mobilemoney_id%")->get(['method_data']);
        $mobileMoneyList        = $this->mobileMoneyList($mobileMoneys, $currencyPaymentMethods);
        if (empty($mobileMoneyList))
        {
            $success['status']  = 401;
            $success['message'] = __('MobileMoney Does Not Exist For Selected Currency!');
        }
        else
        {
            $success['status'] = $this->successStatus;
            $success['mobileMoneys']  = $mobileMoneys;
        }
        return response()->json(['success' => $success], $this->successStatus);
    }

    /**
     * [mobileMoneyList description]
     * @param  [type] $mobileMoneys           [description]
     * @param  [type] $currencyPaymentMethods [description]
     * @return [type]                         [description]
     */
    public function mobileMoneyList($mobileMoneys, $currencyPaymentMethods)
    {
        $selectedMobileMoneys = [];
        $i                    = 0;
        foreach ($mobileMoneys as $mobileMoney)
        {
            foreach ($currencyPaymentMethods as $cpm)
            {
                if ($mobileMoney->id == json_decode($cpm->method_data)->mobilemoney_id)
                {
                    $selectedMobileMoneys[$i]['id']               = $mobileMoney->id;
                    $selectedMobileMoneys[$i]['mobilemoney_name'] = $mobileMoney->mobilemoney_name;
                    $selectedMobileMoneys[$i]['is_default']       = $mobileMoney->is_default;
                    $selectedMobileMoneys[$i]['holder_name']      = $mobileMoney->holder_name;
                    $selectedMobileMoneys[$i]['merchant_code']    = $mobileMoney->merchant_code;
                    $i++;
                }
            }
        }
        return $selectedMobileMoneys;
    }

    /**
     * [getMobileMoneyDetailOnChange description]
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function getMobileMoneyDetails()
    {
        $mobileMoney = MobileMoney::with('file:id,filename')->where(['id' => request()->mobilemoney])->first(['mobilemoney_name', 'holder_name', 'merchant_code', 'file_id']);
        
        if ($mobileMoney)
        {
            $success['status'] = 200;
            $success['mobileMoney']   = $mobileMoney;

            if (!empty($mobileMoney->file_id))
            {
                $success['mobilemoney_logo'] = $mobileMoney->file->filename;
            }
        }
        else
        {
            $success['status'] = 401;
            $success['mobileMoney']   = "MobileMoney Not Found!";
        }
        return response()->json(['success' => $success], $this->successStatus);
    }

    /**
     * [mobileMoneyPaymentStore description]
     * @return [response] [json]
     */
    public function mobileMoneyPaymentStore()
    {
        $uid                  = request('user_id');
        $uuid                 = unique_code();
        $deposit_payment_id   = request('deposit_payment_id');
        $deposit_payment_name = request('deposit_payment_name');
        $currency_id          = request('currency_id');
        $amount               = request('amount');
        $mobilemoney_id       = request('mobilemoney_id');
        $totalAmount          = request('amount') + request('totalFees');
        $feeInfo              = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currency_id, 'payment_method_id' => $deposit_payment_id])->first(['charge_percentage', 'charge_fixed']);
        $feePercentage        = $amount * ($feeInfo->charge_percentage / 100);

        try
        {
            \DB::beginTransaction();

            //File
            if (request()->hasFile('file'))
            {
                $fileName     = request()->file('file');
                $originalName = $fileName->getClientOriginalName();
                $uniqueName   = strtolower(time() . '.' . $fileName->getClientOriginalExtension());
                $file_extn    = strtolower($fileName->getClientOriginalExtension());
                $path         = 'uploads/files/mobilemoney_attached_files';
                $uploadPath   = public_path($path);
                $fileName->move($uploadPath, $uniqueName);

                //File
                $file               = new File();
                $file->user_id      = $uid;
                $file->filename     = $uniqueName;
                $file->originalname = $originalName;
                $file->type         = $file_extn;
                $file->save();
            }

            //Save to Deposit
            $deposit                    = new Deposit();
            $deposit->user_id           = $uid;
            $deposit->currency_id       = $currency_id;
            $deposit->payment_method_id = $deposit_payment_id;
            $deposit->uuid              = $uuid;
            $deposit->charge_percentage = $feePercentage;
            $deposit->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
            $deposit->amount            = $amount;
            $deposit->status            = 'Pending'; //in bank deposit, status will be pending
            if ($deposit_payment_name == 'MobileMoney')
            {
                $deposit->mobilemoney_id = $mobilemoney_id;
                $deposit->file_id = $file->id;
            }
            $deposit->save();

            //Save to Transaction
            $transaction                           = new Transaction();
            $transaction->user_id                  = $uid;
            $transaction->currency_id              = $currency_id;
            $transaction->uuid                     = $uuid;
            $transaction->transaction_reference_id = $deposit->id;
            $transaction->transaction_type_id      = Deposit;
            $transaction->subtotal                 = $deposit->amount;
            $transaction->percentage               = $feeInfo->charge_percentage;
            $transaction->charge_percentage        = $feePercentage;
            $transaction->charge_fixed             = $feeInfo->charge_fixed;
            $transaction->total                    = ($transaction->subtotal + $transaction->charge_percentage + $transaction->charge_fixed);
            $transaction->status                   = 'Pending';
            $transaction->payment_method_id        = $deposit_payment_id;
            if ($deposit_payment_name == 'MobileMoney')
            {
                $transaction->mobilemoney_id = $mobilemoney_id;
                $transaction->file_id = $file->id;
            }
            $transaction->save();

            $wallet = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first(['id']);
            if (empty($wallet))
            {
                $wallet              = new Wallet();
                $wallet->user_id     = $uid;
                $wallet->currency_id = $currency_id;
                $wallet->balance     = 0.00;
                $wallet->is_default  = 'No';
                $wallet->save();
            }
            DB::commit();

            // Send notification to admin
            $this->helper->sendTransactionNotificationToAdmin('deposit', ['data' => $deposit]);

            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success], $this->successStatus);
        }
        catch (\Exception $e)
        {
            DB::rollBack();
            $success['status']  = $this->unauthorisedStatus;
            $success['message'] = $e->getMessage(); // echo print_r($e->getMessage());
            return response()->json(['success' => $success], $this->unauthorisedStatus);
        }
    }

    //Deposit Money Ends here
}
