@extends('admin.layouts.master')

@section('title')
{{ __('Edit Referral Setting') }}
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
                <h3 class="box-title">{{ __('Edit Referral Level') }}</h3>
            </div>

            <!-- form - start -->
            <form method="POST" action="{{ url(\Config::get('adminPrefix').'/settings/edit-referral-setting/$referralLevel->id') }}" class="form-horizontal" id="referral-setting-edit-form">
                {{ csrf_field() }}

                <input type="hidden" value="{{ $referralLevel->id }}" name="referral_id" id="referral_id" />
                <input type="hidden" value="{{ $referralLevel->currency_id }}" name="currency_id" id="currency_id" />
                <input type="hidden" value="{{ $referralLevel->priority }}" name="priority" id="priority" />

                <div class="box-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlInput1">{{ __('Level') }}</label>
                        <div class="col-sm-6">
                            <input type="text" name="level" class="form-control" value="{{ $referralLevel->level }}" placeholder="Add level" id="level">
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
                        <div class="col-sm-6">
                            <input type="text" name="amount" class="form-control" value="{{ $referralLevel->amount }}" placeholder="Add Amount" id="amount">
                            @if($errors->has('amount'))
                            <span class="error">
                                <strong class="text-danger">{{ $errors->first('amount') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlInput1">{{ __('Status') }}</label>
                        <div class="col-sm-6">
                            <select class="select2" name="status" id="status">
                                <option value='Active' {{ $referralLevel->status == 'Active' ? 'selected':"" }}>{{ __('Active') }}</option>
                                <option value='Inactive' {{ $referralLevel->status == 'Inactive' ? 'selected':"" }}>{{ __('Inactive') }}</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="box-footer">
                    <a class="btn btn-theme-danger" href="{{ url(\Config::get('adminPrefix').'/settings/referral-settings') }}">{{ __('Cancel') }}</a>
                    <button type="submit" class="btn btn-theme pull-right">&nbsp; {{ __('Update') }} &nbsp;</button>
                </div>
            </form>
            <!-- form - ends -->
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
        let referral_id = $('#referral_id').val();
        let level = $('#level').val();
        checkDuplicateLevel(level, referral_id);
    });

    var hasLevelError = false;

    function enableDisableButton() {
        if (!hasLevelError) {
            $('form').find("button[type='submit']").prop('disabled', false);
        } else {
            $('form').find("button[type='submit']").prop('disabled', true);
        }
    }

    function checkDuplicateLevel(level, referral_id) {
        $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: 'POST',
                url: SITE_URL + "/" + ADMIN_PREFIX + "/settings/referral-settings/check-duplicate-level",
                data: {
                    'referral_id': referral_id,
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