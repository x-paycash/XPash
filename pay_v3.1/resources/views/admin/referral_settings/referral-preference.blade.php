@extends('admin.layouts.master')
@section('title')
{{ __('Referral Preferences') }}
@endsection

@section('page_content')
<!-- Main content -->
<div class="row">
    <div class="col-md-3 settings_bar_gap">
        {{-- settings_bar --}}
        @include('admin.common.settings_bar')
    </div>
    <div class="col-md-9 pl-20">
        <div class="box">
            <div class="panel-body">
                <ul class="nav nav-tabs cus" role="tablist">
                    <li class="active">
                        <a href="{{url(\Config::get('adminPrefix').'/settings/referral-preferences')}}">{{ __('Referral Preferences Settings') }}</a>
                    </li>
                    <li>
                        <a href="{{ url(\Config::get('adminPrefix').'/settings/referral-settings') }}">{{ __('Referral Levels Settings') }}</a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="box box-info">
            <div class="box-header with-border text-center">
                <h3 class="box-title">{{ __('Manage Referral Preferences') }}</h3>
            </div>
            <form action="{{ url(\Config::get('adminPrefix').'/settings/referral-preferences') }}" method="post" id="referral-preferences-form" class="form-horizontal">
                {!! csrf_field() !!}
                <div class="box-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="inputEmail3">{{ __('Referral Enabled') }}</label>
                        <div class="col-sm-6">
                            <select name="is_referral_enabled" class="select2">
                                <option value="yes" {{ $is_referral_enabled == 'yes' ? 'selected':""}}>{{ __('Yes') }}</option>
                                <option value="no" {{ $is_referral_enabled == 'no' ? 'selected':""}}>{{ __('No') }}</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="inputEmail3">{{ __('Referral Currency') }}</label>
                        <div class="col-sm-6">
                            <select class="select2" name="referral_currency" id="referral_currency">
                                @foreach($activeCurrencies as $activeCurrency)
                                <option value="{{ $activeCurrency->id }}" {{ $activeCurrency->id == $referral_currency ? 'selected="selected"' : '' }}>{{ $activeCurrency->code }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="inputEmail3">{{ __('Minimum Referral Amount') }}</label>
                        <div class="col-sm-6">
                            <input type="text" name="min_referral_amount" id="min_referral_amount" class="form-control" value="{{ isset($min_referral_amount) ? $min_referral_amount : '' }}">
                        </div>
                    </div>

                    @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_referral_settings'))
                    <div class="row">
                        <div class="col-md-10">
                            <button class="btn btn-theme pull-right" type="submit">{{ __('Submit') }}</button>
                        </div>
                    </div>
                    @endif
                </div>
            </form>
        </div>
    </div>
</div>
<!-- /.box -->
@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/js/jquery.validate.min.js') }}" type="text/javascript"></script>

<script type="text/javascript">
    $(window).on('load', function() {
        $(".select2").select2();
    });

    $.validator.setDefaults({
        highlight: function(element) {
            $(element).parent('div').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).parent('div').removeClass('has-error');
        },
    });

    $('#referral-preferences-form').validate({
        rules: {
            min_referral_amount: {
                required: true,
                number: true,
            },
        },
    });
</script>

@endpush