<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>
        {{ __('Referral Awards') }}
    </title>
</head>
<style>
    body {
        font-family: "DeJaVu Sans", Helvetica, sans-serif;
        color: #121212;
        line-height: 15px;
    }

    table,
    tr,
    td {
        padding: 6px 6px;
        border: 1px solid black;
    }

    tr {
        height: 40px;
    }

    /*logo -- css*/
    .setting-img {
        overflow: hidden;
        max-width: 100%;
    }

    .img-wrap-general-logo {
        /*width: 300px;*/
        overflow: hidden;
        margin: 5px;
        background: rgba(74, 111, 197, 0.9) !important;
        /*height: 100px;*/
        max-width: 100%;
    }

    .img-wrap-general-logo>img {
        max-width: 100%;
        height: auto !important;
        max-height: 100%;
        width: auto !important;
        object-fit: contain;
    }

    /*logo -- css*/
</style>

<body>
    <div style="width:100%; margin:0px auto;">
        <div style="height:80px">
            <div style="width:80%; float:left; font-size:13px; color:#383838; font-weight:400;">
                <div>
                    <strong>
                        {{ ucwords(Session::get('name')) }}
                    </strong>
                </div>
                <br>
                <div>
                    {{ __('Period :') }} {{ $date_range }}
                </div>
                <br>
                <div>
                    {{ __('Print Date :') }}  {{ dateFormat(\Carbon\Carbon::now()->toDateString())}}
                </div>
            </div>
            <div style="width:20%; float:left;font-size:15px; color:#383838; font-weight:400;">
                <div>
                    <div>
                        @if (!empty($company_logo))
                        <div class="setting-img">
                            <div class="img-wrap-general-logo">
                                <img src="{{ url('public/images/logos/'.$company_logo) }}" class="img-responsive">
                            </div>
                        </div>
                        @else
                        <img src="{{ url('public/uploads/userPic/default-logo.jpg') }}" width="120" height="80">
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div style="clear:both">
        </div>
        <div style="margin-top:30px;">
            <table style="width:100%; border-radius:1px;  border-collapse: collapse;">
                <tr style="background-color:#f0f0f0;text-align:center; font-size:12px; font-weight:bold;">
                    <td>{{ __('Date') }}</td>
                    <td>{{ __('Awarded User') }}</td>
                    <td>{{ __('Currency') }}</td>
                    <td>{{ __('Referral Level') }}</td>
                    <td>{{ __('Awarded Amount') }}</td>
                    <td>{{ __('Referral Code') }}</td>
                </tr>

                @foreach($referralAwards as $referralAward)
                <tr style="background-color:#fff; text-align:center; font-size:12px; font-weight:normal;">

                    <td>{{ dateFormat($referralAward->created_at) }}</td>

                    <td>{{ $referralAward->awarded_user->first_name . ' ' . $referralAward->awarded_user->last_name }}</td>

                    <td>{{ $referralAward->referral_level->currency->code }}</td>

                    <td>{{ $referralAward->referral_level->level }}</td>

                    <td>{{ formatNumber($referralAward->awarded_amount) }}</td>

                    <td>{{ $referralAward->referral_code->code }}</td>

                </tr>
                @endforeach
            </table>
        </div>
    </div>
</body>

</html>