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

<!-- jquery-ui-1.12.1 -->
<link rel="stylesheet" type="text/css" href="{{ asset('public/backend/jquery-ui-1.12.1/jquery-ui.min.css')}}">
@endsection

@section('page_content')
<div class="box">
    <div class="box-body pb-20">
        <form class="form-horizontal" action="{{ url(\Config::get('adminPrefix').'/referral-awards') }}" method="GET">

            <input id="startfrom" type="hidden" name="from" value="{{ isset($from) ? $from : '' }}">

            <input id="endto" type="hidden" name="to" value="{{ isset($to) ? $to : '' }}">

            <input id="user_id" type="hidden" name="user_id" value="{{ isset($user) ? $user : '' }}">

            <div class="row">
                <div class="col-md-12">
                    <div class="d-flex flex-wrap justify-content-between">
                        <div class="d-flex flex-wrap">
                            <!-- Date and time range -->
                            <div class="pr-25">
                                <label>{{ __('Date Range') }}</label><br>
                                <button type="button" class="btn btn-default" id="daterange-btn">
                                    <span id="drp"><i class="fa fa-calendar"></i></span>
                                    <i class="fa fa-caret-down"></i>
                                </button>
                            </div>

                            <!-- Currency -->
                            @if (isset($referralAwardsLevels) && count($referralAwardsLevels) > 0)
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
                            @endif

                            <div class="pr-25">
                                <label for="user">{{ __('User') }}</label>
                                <input id="user_input" type="text" name="user" placeholder="Enter Name" class="form-control" value="{{ empty($user) ?  $user : $getAwardedUserName->first_name.' '.$getAwardedUserName->last_name }}" {{  isset($getAwardedUserName) && ($getAwardedUserName->id == $user) ? 'selected' : '' }}>
                                <span id="error-user"></span>
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
<div class="row">
    <div class="col-md-8">
        <h3 class="panel-title text-bold ml-5">{{ __('All Referral Awards') }}</h3>
    </div>
    <div class="col-md-4">
        <div class="btn-group pull-right">
            <a href="" class="btn btn-sm btn-default btn-flat" id="csv">{{ __('CSV') }}</a>&nbsp;&nbsp;
            <a href="" class="btn btn-sm btn-default btn-flat" id="pdf">{{ __('PDF') }}</a>
        </div>
    </div>
</div>
<div class="box mt-20">
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-body">
                        <div class="table-responsive">
                            {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
                        </div>
                    </div>
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

<!-- jquery-ui-1.12.1 -->
<script src="{{ asset('public/backend/jquery-ui-1.12.1/jquery-ui.min.js') }}" type="text/javascript"></script>

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
            var sessionDate = "{{ Session::get('date_format_type') }}";
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

        $("#user_input").on('keyup keypress', function(e) {
            if (e.type == "keyup" || e.type == "keypress") {
                var user_input = $('form').find("input[type='text']").val();
                if (user_input.length === 0) {
                    $('#user_id').val('');
                    $('#error-user').html('');
                    $('form').find("button[type='submit']").prop('disabled', false);
                }
            }
        });
    });

    $(document).ready(function() {
        $('#user_input').autocomplete({
            source: function(req, res) {
                if (req.term.length > 0) {
                    $.ajax({
                        url: "{{ url(\Config::get('adminPrefix').'/referral-awards/user_search') }}",
                        dataType: 'json',
                        type: 'get',
                        data: {
                            search: req.term
                        },
                        success: function(response) {
                            $('form').find("button[type='submit']").prop('disabled', true);
                            if (response.status == 'success') {
                                res($.map(response.data, function(item) {
                                    return {
                                        awarded_user_id: item.awarded_user_id, //awarded_user_id is defined
                                        first_name: item.first_name, //first_name is defined
                                        last_name: item.last_name, //last_name is defined
                                        value: item.first_name + ' ' + item.last_name //don't change value
                                    }
                                }));
                            } else if (response.status == 'fail') {
                                $('#error-user').addClass('text-danger').html('User Does Not Exist!');
                            }
                        }
                    })
                } else {
                    $('#user_id').val('');
                }
            },
            select: function(event, ui) {
                var e = ui.item;
                $('#error-user').html('');
                $('#user_id').val(e.awarded_user_id);
                $('form').find("button[type='submit']").prop('disabled', false);
            },
            minLength: 0,
            autoFocus: true
        });
    });

    var startfrom = $('#startfrom').val();
    var endto = $('#endto').val();
    var currency = $('#currency').val();
    var user_id = $('#user_id').val();

    // csv
    $(document).on('click', '#csv', function(e) {
        e.preventDefault();
        window.location = SITE_URL + "/" + ADMIN_PREFIX + "/referral-awards/csv?startfrom=" + startfrom +
            "&endto=" + endto +
            "&currency=" + currency +
            "&user_id=" + user_id;
    });

    // pdf
    $(document).on('click', '#pdf', function(e) {
        e.preventDefault();
        window.location = SITE_URL + "/" + ADMIN_PREFIX + "/referral-awards/pdf?startfrom=" + startfrom +
            "&endto=" + endto +
            "&currency=" + currency +
            "&user_id=" + user_id;
    });
</script>

@endpush