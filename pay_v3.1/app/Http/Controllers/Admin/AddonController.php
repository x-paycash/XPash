<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Helpers\Common;
use ZipArchive;
use Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Addon;
use App\Models\PaymentMethod;
use App\Models\FeesLimit;
use App\Models\Currency;
use App\Models\TransactionType;
use Illuminate\Support\Facades\{Artisan, 
    Session,
    Hash, 
    Auth,
    DB
};
use Exception;
use File;
use Validator;

class AddonController extends Controller
{
    protected $helper;
    /**
     * The CryptoCurrency repository instance.
     *
     * @var CryptoCurrencyRepository
     */
    protected $cryptoCurrency;
    public function __construct()
    {
        $this->helper         = new Common();
    }

    public function index(Request $request)
    {

        $data['menu'] = 'addons';

         
        if ($request->isMethod('post')) {
            $rules = [
                'purchase_code' => 'required',
                'addon_zip' => 'required|mimes:zip',
            ];
            $fieldNames = [
                'purchase_code' => 'Purchase code',
                'addon_zip' => 'Addon Zip',
            ];

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if($validator->fails()) {
                $error = $validator->messages()->get('*');

                $errorMessage = isset($error['purchase_code'][0]) ? $error['purchase_code'][0] : '';
                $errorMessage .= isset($error['addon_zip'][0]) ? $error['addon_zip'][0] : '';
                $errorMessage .= isset($error['addon_zip'][1]) ? $error['addon_zip'][1] : '';

                $this->helper->one_time_message('danger', $errorMessage);
                return redirect()->back();
            }

            $domainName     = request()->getHost();
            $domainIp       = request()->ip();
            $purchaseStatus = $this->getPurchaseStatus($domainName, $domainIp, $request->purchase_code);
            $purchaseStatus = 1;
            
            if ($purchaseStatus != 1) {
                $this->helper->one_time_message('danger', 'Invalid purchase code.');
                return redirect()->back();
            }

            if (!class_exists('ZipArchive')) {
                $this->helper->one_time_message('danger', 'Please enable ZipArchive extension.');
                return redirect()->back();
            }
            try {
                if ($request->hasFile('addon_zip')) {
                    // Create update directory.
                    $dir = 'addons';
                    if (!is_dir($dir))
                        mkdir($dir, 0777, true);


                    $zipped_file_name = $request->addon_zip->getClientOriginalName();
                    $zipped_file_name = pathinfo($zipped_file_name, PATHINFO_FILENAME);


                    // //Unzip uploaded update file and remove zip file.
                    $zip = new ZipArchive;
                    $res = $zip->open($request->addon_zip);

                    $random_dir = Str::random(10);

                    if ($res === true) {
                        $res = $zip->extractTo(base_path('temp/' . $random_dir . '/addons'));
                        $zip->close();
                    } else {
                        dd('could not open');
                    }

                    $str = file_get_contents(base_path('temp/' . $random_dir . '/addons/' . $zipped_file_name . '/config.json'));
                    $json = json_decode($str, true);

                    if (env('APP_VERSION', 3.1) >= $json['minimum_item_version']) {
                        if (count(Addon::where('unique_identifier', $json['unique_identifier'])->get()) == 0) {
                            $addon = new Addon;
                            $addon->name = $json['name'];
                            $addon->unique_identifier = $json['unique_identifier'];
                            $addon->version = $json['version'];
                            $addon->activated = 1;
                            $addon->image = $json['addon_banner'];
                            $addon->save();

                            // Create new directories.
                            if (!empty($json['directory'])) {
                                //dd($json['directory'][0]['name']);
                                foreach ($json['directory'][0]['name'] as $directory) {
                                    if (is_dir(base_path($directory)) == false) {
                                        mkdir(base_path($directory), 0777, true);

                                    } else {
                                        echo "error on creating directory";
                                    }

                                }
                            }

                            // Create/Replace new files.
                            if (!empty($json['files'])) {
                                foreach ($json['files'] as $file) {
                                    copy(base_path('temp/' . $random_dir . '/' . $file['root_directory']), base_path($file['update_directory']));
                                }

                            }

                            // Run sql modifications
                            $sql_path = base_path('temp/' . $random_dir . '/addons/' . $zipped_file_name .  '/sql/update.sql');
                            if (file_exists($sql_path)) {
                                DB::unprepared(file_get_contents($sql_path));
                            }

                            // This checking is only for mobile money addon
                            if ($addon->unique_identifier == 'mobile_money') {
                                $this->setupMobileMoneyAddon();
                            }
                            // Mobile money addon checking ends here

                            File::deleteDirectory(base_path('temp/' . $random_dir));

                            $this->helper->one_time_message('success', 'Addon Installed successfully');
                            return redirect()->back();
                        } else {
                            // Create new directories.
                            if (!empty($json['directory'])) {
                                //dd($json['directory'][0]['name']);
                                foreach ($json['directory'][0]['name'] as $directory) {
                                    if (is_dir(base_path($directory)) == false) {
                                        mkdir(base_path($directory), 0777, true);

                                    } else {
                                        echo "error on creating directory";
                                    }

                                }
                            }

                            // Create/Replace new files.
                            if (!empty($json['files'])) {
                                foreach ($json['files'] as $file) {
                                    copy(base_path('temp/' . $random_dir . '/' . $file['root_directory']), base_path($file['update_directory']));
                                }

                            }

                            $addon = Addon::where('unique_identifier', $json['unique_identifier'])->first();

                            for ($i = $addon->version + 0.1; $i <= $json['version']; $i = $i + 0.1) {
                                // Run sql modifications
                                $sql_path = base_path('temp/' . $random_dir . '/addons/' . $zipped_file_name . '/sql/' . $i . '.sql');
                                if (file_exists($sql_path)) {
                                    DB::unprepared(file_get_contents($sql_path));
                                }
                            }

                            $addon->version = $json['version'];
                            $addon->save();

                            File::deleteDirectory(base_path('temp/' . $random_dir));
                            $this->helper->one_time_message('success', 'This addon is updated successfully');
                            return redirect()->back();
                        }
                    } else {
                        $this->helper->one_time_message('danger', 'This version is not capable of installing Addons, Please update.');
                        return redirect()->back();
                    }
                }
            } catch (Exception $e) {
                $this->helper->one_time_message('danger', $e->getMessage());
                return redirect()->back();
            }
        }

        $data['addons'] = Addon::all();

        return view('admin.addons.addons', $data);
    }

    public function activation(Request $request, $status, $id)
    {
        $addon = Addon::find($id);

        if ($addon->count() < 0) {
            $this->helper->one_time_message('danger', 'Opps, something went wrong, please try again.');
        }

        $addon->activated = (int) $status;
        $addon->save();

        $unique_identifier = strtoupper($addon->unique_identifier);


        if ($request->status == '1') {
            changeEnvironmentVariable($unique_identifier, 'true');
            $this->helper->one_time_message('success', 'Addon successfully activated.');
        } else {
            changeEnvironmentVariable($unique_identifier, 'false');
            $this->helper->one_time_message('success', 'Addon successfully inactived.');
        }

        return redirect()->back();
    }

    //Send data to verify envato purchase code
    public function getPurchaseStatus($domainName, $domainIp, $envatopurchasecode)
    {
        //Added curl extension check during installation
        if (!extension_loaded('curl')) {
            throw new \Exception('cURL extension seems not to be installed');
        }

        $data = array(
            'domain_name'        => $domainName,
            'domain_ip'          => $domainIp,
            'envatopurchasecode' => $envatopurchasecode,
        );

        // $url = "http://envatoapi.techvill.net/";
        $url = "https://envatoapi.techvill.org/";

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_POSTREDIR, 3);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $output = curl_exec($ch);

        if ($output == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    // This function is only for mobile money addon
    protected function setupMobileMoneyAddon()
    {
        $paymentMethodId = PaymentMethod::where(['name' => 'MobileMoney'])->value('id');
        if (empty($paymentMethodId)) {
            $paymentMethod = new PaymentMethod();
            $paymentMethod->name = "MobileMoney";
            $paymentMethod->save();
            $paymentMethodId = $paymentMethod->id;
        }
        $transactionTypes = TransactionType::whereIn('name', ['Deposit', 'Withdrawal', 'Transferred', 'Exchange_From', 'Request_To'])->select('id')->get();

        $defaultCurrency = Currency::where(['default' => 1])->first(['id']);
        $data = [];
        foreach ($transactionTypes as $type) {
            if (empty(FeesLimit::where(['currency_id' => $defaultCurrency->id, 'transaction_type_id' => $type->id, 'payment_method_id' => $paymentMethodId])->first(['id']))) {
                $data[] = [
                    'currency_id' => $defaultCurrency->id,
                    'transaction_type_id' => $type->id,
                    'payment_method_id' => $paymentMethodId,
                    'has_transaction' => 'Yes'
                ];
            }
        }

        if (!empty($data)) {
            FeesLimit::insert($data);
        }
    }
}
