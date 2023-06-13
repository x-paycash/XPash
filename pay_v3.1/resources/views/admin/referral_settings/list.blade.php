@extends('admin.layouts.master')

@section('title')
{{ __('Referral Settings') }}
@endsection

@section('head_style')
<!-- dataTables -->
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/css/responsive.dataTables.min.css') }}">
@endsection

@section('page_content')

<!-- Main content -->
<div class="row">
    <div class="col-md-3 settings_bar_gap">
        @include('admin.common.settings_bar')
    </div>
    <div class="col-md-9">

        <div class="box">
            <div class="panel-body">
                <ul class="nav nav-tabs cus" role="tablist">
                    <li>
                        <a href="{{ url(\Config::get('adminPrefix').'/settings/referral-preferences')}}">{{ __('Referral Preferences Settings') }}</a>
                    </li>
                    <li class="active">
                        <a href="{{ url(\Config::get('adminPrefix').'/settings/referral-settings')}}">{{ __('Referral Levels Settings') }}</a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="box box_info">

            {{-- Add Referral Level --}}
            <div class="box-header">
                <h3 class="box-title">{{ __('Manage Referral Levels') }}</h3>
                @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'add_referral_settings'))
                <div style="float:right;"><a class="btn btn-theme" href="{{ url(\Config::get('adminPrefix').'/settings/add-referral-setting') }}">{{ __('Add Referral Level') }}</a></div>
                @endif
            </div>
            {{-- Add Referral Level --}}

            <div class="box-body table-responsive">

                {{-- Filter --}}
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <form class="form-horizontal" action="{{ url(\Config::get('adminPrefix').'/settings/referral-settings') }}" method="GET">
                                <!-- Status -->
                                <div class="col-md-3">
                                    <label for="status">{{ __('Status') }}</label>
                                    <select class="form-control select2" name="status" id="status">
                                        <option value="all" {{ $status =='all' ? 'selected' : '' }}>{{ __('All') }}</option>
                                        @foreach($referralLevelsStatus as $refLvl)
                                        <option value="{{ $refLvl->status }}" {{ $refLvl->status == $status ? __('selected') : __('all') }}>
                                            {{ $refLvl->status }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>

                                <!-- Currency -->
                                <div class="col-md-3">
                                    <label for="currency">{{ __('Currency') }}</label>
                                    <select class="form-control select2" name="currency" id="currency">
                                        <option value="all" {{ ($currency =='all') ? 'selected' : '' }}>{{ __('All') }}</option>
                                        @foreach($referralLevelsCurrencies as $refLvl)
                                        <option value="{{ $refLvl->currency_id }}" {{ ($refLvl->currency_id == $currency) ? 'selected' : '' }}>
                                            {{ $refLvl->currency->name }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-2">
                                    <div class="input-group" style="margin-top: 25px;">
                                        <button type="submit" name="btn" class="btn btn-theme" id="btn">{{ __('Filter') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                {{-- Filter --}}
                <hr>

                <table class="table table-hover" id="referral-settings-list">
                    <thead>
                        <tr>
                            <th>{{ __('Currency') }}</th>
                            <th>{{ __('Level') }}</th>
                            <th>{{ __('Amount') }}</th>
                            <th>{{ __('Status') }}</th>
                            @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_referral_settings'))
                            <th>{{ __('Action') }}</th>
                            @endif
                        </tr>
                    </thead>
                    <tbody>
                        @if ($referralLevels->count() > 0)
                        @foreach($referralLevels as $referralLevel)
                        <tr>
                            <td>{{ $referralLevel->currency->name }}</td>

                            <td>{{ $referralLevel->level }}</td>

                            <td>{{ formatNumber($referralLevel->amount) }}</td>

                            <td>{!! getStatusLabel($referralLevel->status) !!}</td>

                            @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_referral_settings'))
                            <td>
                                <a class="btn btn-xs btn-primary" href="{{ url(\Config::get('adminPrefix').'/settings/edit-referral-setting/'.$referralLevel->id)}}"><i class="glyphicon glyphicon-edit"></i></a>
                            </td>
                            @endif
                        </tr>
                        @endforeach
                        @endif
                    </tbody>
                </table>

                <div class="box-header">
                    <div class="row">
                        <div class="col-sm-4">
                            <small>{{ __('*Latest currency will be selected') }}</small>
                        </div>
                    </div>
                    @if ($referralLevels->count() > 0)
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="dropdown pull-left" style="margin-top: 10px;">
                                <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                    {{ __('Currency :') }}
                                    <span class="defaultCurrency" data-defaultCurrencyId="{{ $referralLevelCurrency->currency->id }}">
                                        {{ $referralLevelCurrency->currency->name }}
                                    </span>
                                    <span class="caret"></span>
                                </button>

                                <ul class="dropdown-menu">
                                    @foreach($activeCurrencies as $activeCurrency)
                                    <li class="currencyList" data-activeCurrencyId="{{$activeCurrency->id}}" data-activeCurrencyName="{{$activeCurrency->name}}">
                                        <a href="#">{{$activeCurrency->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="dropdown" style="margin-top: 10px;">
                                @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_referral_settings'))
                                <div>
                                    <button class="btn btn-theme mass-update" data-selectedCurrencyId="" style="float:right;">{{ __('Mass Update') }}</button>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                    @endif
                </div>
                <!-- /.box-header -->
            </div>
        </div>
    </div>
</div>
<!-- /Main content -->
@endsection

@push('extra_body_scripts')

<!-- jquery.dataTables js -->
<script src="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>

<script type="text/javascript">
    //on load
    $(window).on('load', function() {
        $(".select2").select2({});

        $("#referral-settings-list").DataTable({
            "order": [],
            "columnDefs": [{
                "className": "dt-center",
                "targets": "_all"
            }],
            "language": "{{ Session::get('dflt_lang') }}",
            "pageLength": "{{Session::get('row_per_page')}}"
        });
    });

    //On change - currencyList
    $(document).on('click', '.currencyList', function(e) {
        $('.defaultCurrency').html($(this).attr('data-activeCurrencyName'));
        $('.mass-update').attr("data-selectedCurrencyId", $(this).attr('data-activeCurrencyId')); //need for mass update
    });

    //On Click - mass-update
    $(document).on('click', '.mass-update', function(e) {
        var defaultCurrencyId = $('.defaultCurrency').attr('data-defaultCurrencyId');
        var selectedCurrencyId = $(this).attr('data-selectedCurrencyId');
        if (!selectedCurrencyId) {
            $(this).attr("data-selectedCurrencyId", defaultCurrencyId);
            selectedCurrencyId = $(this).attr('data-selectedCurrencyId');
        }

        if (defaultCurrencyId != selectedCurrencyId) {
            updateReferralLevels(defaultCurrencyId, selectedCurrencyId);
        } else {
            window.location.reload();
        }
    });

    // update referral levels table
    function updateReferralLevels(defaultCurrencyId, selectedCurrencyId) {
        $.ajax({
                method: 'GET',
                url: SITE_URL + "/" + ADMIN_PREFIX + "/settings/referral-settings/mass-update-referral-levels",
                data: {
                    'defaultCurrencyId': defaultCurrencyId,
                    'selectedCurrencyId': selectedCurrencyId,
                },
                dataType: "json",
            })
            .done(function(response) {
                if (response.status == true || response.status == false) {
                    window.location.reload();
                }
            })
            .fail(function(error) {
                console.log(error);
            });
    }
</script>
@endpush