@extends('admin.layouts.master')

@section('title')
{{ __('Referral Awards') }}
@endsection

@section('head_style')
<!-- Bootstrap daterangepicker -->
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/bootstrap/dist/css/daterangepicker.css')}}">

<!-- dataTables -->
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/css/responsive.dataTables.min.css') }}">
@endsection

@section('page_content')
<div class="box">
    <div class="panel-body ml-20">
        <ul class="nav nav-tabs cus" role="tablist">
            <li>
                <a href='{{ url(\Config::get("adminPrefix")."/users/edit/$users->id") }}'>{{ __('Profile') }}</a>
            </li>
            <li>
                <a href='{{ url(\Config::get("adminPrefix")."/users/transactions/$users->id") }}'>{{ __('Transactions') }}</a>
            </li>
            <li>
                <a href='{{ url(\Config::get("adminPrefix")."/users/wallets/$users->id") }}'>{{ __('Wallets') }}</a>
            </li>
            <li>
                <a href='{{ url(\Config::get("adminPrefix")."/users/tickets/$users->id") }}'>{{ __('Tickets') }}</a>
            </li>
            <li>
                <a href='{{ url(\Config::get("adminPrefix")."/users/disputes/$users->id") }}'>{{ __('Disputes') }}</a>
            </li>
            @if (count($users->referral_award_awarded_user) > 0)
                <li class="active">
                    <a href='{{ url(\Config::get("adminPrefix")."/users/referral-awards/$users->id")}}'>{{ __('Referral Awards') }}</a>
                </li>
            @endif
        </ul>
        <div class="clearfix"></div>
    </div>
</div>

<div class="box">
    <div class="box-body">
        <form class="form-horizontal" action="{{ url(\Config::get('adminPrefix').'/users/referral-awards/'.$users->id) }}" method="GET">

            <input id="startfrom" type="hidden" name="from" value="{{ isset($from) ? $from : '' }}">
            <input id="endto" type="hidden" name="to" value="{{ isset($to) ? $to : '' }}">
            <input id="user_id" type="hidden" name="user_id" value="{{ $users->id }}">

            <div class="row">
                <div class="col-md-12">
                    <div class="d-flex flex-wrap justify-content-between">
                        <div class="d-flex flex-wrap">
                            <!-- Date and time range -->
                            <div class="pr-25">
                                <label>{{ __('Date Range') }}</label><br>
                                <button type="button" class="btn btn-default" id="daterange-btn" >
                                    <span id="drp">
                                        <i class="fa fa-calendar"></i>
                                    </span>
                                    <i class="fa fa-caret-down"></i>
                                </button>
                            </div>

                            <!-- Currency -->
                            <div class="pr-25">
                                <label for="currency">{{ __('Currency') }}</label>
                                <select class="form-control select2" name="currency" id="currency">
                                    <option value="all" {{ ($currency =='all') ? 'selected' : '' }}>{{ __('All') }}</option>
                                    @foreach($referralAwardsLevels as $referralAwardsLevel)
                                    <option value="{{ $referralAwardsLevel->currency_id }}" {{ ($referralAwardsLevel->currency_id == $currency) ? 'selected' : '' }}>
                                        {{ $referralAwardsLevel->currency->code }}
                                    </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div>
                            <div class="input-group" style="margin-top: 25px;">
                                <button type="submit" name="btn" class="btn btn-theme" id="btn">{{ __('Filter') }}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Total Charge Boxes -->
@if($referralAwardsEachCurrency)
<div class="box">
    <div class="box-body">
        <div class="row">
            @forelse ($referralAwardsEachCurrency as $index =>$referralAward)
            @if ($referralAward > 0)
            <div class="col-md-3">
                <div class="panel panel-primary">
                    <div class="panel-body text-center" style="padding:5px; margin-bottom: 0;">
                        <span class="text-info" style="font-size: 15px">{{ __('Total :index Referral Awards', ['index' => $index ]) }}</span>
                        <strong>
                            <h4>{{ moneyFormat($index , formatNumber($referralAward)) }}</h4>
                        </strong>
                    </div>
                </div>
            </div>
            @endif
            @empty
            <h3 class="panel-title text-center">{{ __('No Referral Award Found!') }}</h3>
            @endforelse
        </div>
    </div>
</div>
@endif

<div class="box">
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('extra_body_scripts')
<!-- Bootstrap daterangepicker -->
<script src="{{ asset('public/backend/bootstrap-daterangepicker/daterangepicker.js') }}" type="text/javascript"></script>

<!-- jquery.dataTables js -->
<script src="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>

{!! $dataTable->scripts() !!}

<script type="text/javascript">
    $(".select2").select2({});

    var sDate;
    var eDate;

    //Date range as a button
    $('#daterange-btn').daterangepicker({
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            startDate: moment().subtract(29, 'days'),
            endDate: moment()
        },
        function(start, end) {
            var sessionDate = "{{Session::get('date_format_type')}}";
            var sessionDateFinal = sessionDate.toUpperCase();

            sDate = moment(start, 'MMMM D, YYYY').format(sessionDateFinal);
            $('#startfrom').val(sDate);

            eDate = moment(end, 'MMMM D, YYYY').format(sessionDateFinal);
            $('#endto').val(eDate);

            $('#daterange-btn span').html('&nbsp;' + sDate + ' - ' + eDate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
        }
    )

    $(document).ready(function() {
        $("#daterange-btn").mouseover(function() {
            $(this).css('background-color', 'white');
            $(this).css('border-color', 'grey !important');
        });

        var startDate = "{!! $from !!}";
        var endDate = "{!! $to !!}";

        if (startDate == '') {
            $('#daterange-btn span').html('<i class="fa fa-calendar"></i> &nbsp;&nbsp; Pick a date range &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
        } else {
            $('#daterange-btn span').html(startDate + ' - ' + endDate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
        }
    });
</script>
@endpush