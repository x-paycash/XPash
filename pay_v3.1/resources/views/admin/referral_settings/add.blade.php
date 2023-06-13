@extends('admin.layouts.master')

@section('title')
{{ __('Add Referral Setting') }}
@endsection

@section('page_content')

<div class="row">
    <div class="col-md-3 settings_bar_gap">
        @include('admin.common.settings_bar')
    </div>
    <div class="col-md-9">
        <!-- Horizontal Form -->
        <div class="box box-info">
            <div class="box-header with-border text-center">
                <h3 class="box-title">{{ __('Add Referral Level') }}</h3>
            </div>

            <!-- form start -->
            <form method="POST" action="{{ url(\Config::get('adminPrefix').'/settings/add-referral-setting') }}" class="form-horizontal" id="referral-setting-add-form">
                {{ csrf_field() }}

                <input type="hidden" value="{{ (!empty($referralLevel->priority) ? $referralLevel->priority : 0) + 1 }}" name="priority" id="priority" />

                <div class="box-body">
                    @if (empty($referralLevel->priority))
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlInput1">{{ __('Currency') }}</label>
                        <div class="col-sm-5">
                            <select class="select2" name="currency_id" id="currency_id">
                                @foreach($activeCurrencies as $activeCurrency)
                                <option value="{{ $activeCurrency->id }}" {{ $activeCurrency->id == $defaultCurrency->id ? 'selected="selected"' : '' }}>{{ $activeCurrency->code }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-4"><small>{{ __('*System default currency will be selected') }}</small></div>
                    </div>
                    @else
                    <input type="hidden" value="{{ $referralLevel->currency_id }}" name="currency_id" id="currency_id" />
                    @endif

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlInput1">{{ __('Level') }}</label>
                        <div class="col-sm-5">
                            <input type="text" name="level" class="form-control" value="{{ old('level') }}" placeholder="Add level" id="level">
                            @if($errors->has('level'))
                            <span class="error">
                                <strong class="text-danger">{{ $errors->first('level') }}</strong>
                            </span>
                            @endif
                            <span id="level-name-error"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlInput1">{{ __('Amount') }}</label>
                        <div class="col-sm-5">
                            <input type="text" name="amount" class="form-control" value="{{ old('amount') }}" placeholder="Add Amount" id="amount">
                            @if($errors->has('amount'))
                            <span class="error">
                                <strong class="text-danger">{{ $errors->first('amount') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                </div>

                <div class="box-footer">
                    <a class="btn btn-theme-danger" href="{{ url(\Config::get('adminPrefix').'/settings/referral-settings') }}">{{ __('Cancel') }}</a>
                    <button type="submit" class="btn btn-theme pull-right">&nbsp; {{ __('Add') }} &nbsp;</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/js/jquery.validate.min.js') }}" type="text/javascript"></script>

<script type="text/javascript">
    $(window).on('load', function() {
        $(".select2").select2({});
    });

    $(document).on('blur', '#level', function(e) {
        let level = $('#level').val();
        checkDuplicateLevel(level);
    });

    var hasLevelError = false;

    function enableDisableButton() {
        if (!hasLevelError) {
            $('form').find("button[type='submit']").prop('disabled', false);
        } else {
            $('form').find("button[type='submit']").prop('disabled', true);
        }
    }

    function checkDuplicateLevel(level) {
        $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: 'POST',
                url: SITE_URL + "/" + ADMIN_PREFIX + "/settings/referral-settings/check-duplicate-level",
                data: {
                    'level': level,
                },
                dataType: "json",
            })
            .done(function(response) {
                if (response.status == true) {
                    $('#level-name-error').addClass('error').html(response.message).css("font-weight", "bold");
                    hasLevelError = true;
                    enableDisableButton();
                } else {
                    $('#level-name-error').html('');
                    hasLevelError = false;
                    enableDisableButton();
                }
            })
            .fail(function(error) {
                console.log(error);
            });
    }

    $.validator.setDefaults({
        highlight: function(element) {
            $(element).parent('div').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).parent('div').removeClass('has-error');
        },
    });

    $('#referral-setting-add-form').validate({
        rules: {
            level: {
                required: true,
            },
            amount: {
                required: true,
                number: true,
            },
        },
    });
</script>

@endpush