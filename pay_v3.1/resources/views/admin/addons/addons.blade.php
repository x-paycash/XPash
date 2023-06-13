@extends('admin.layouts.master')
@section('title', 'Add Currency')

@section('head_style')
    <!-- bootstrap-toggle -->
    <link rel="stylesheet" href="{{ asset('public/backend/bootstrap-toggle/css/bootstrap-toggle.min.css') }}">
@endsection

@section('page_content')
<div class="box box-default">
    <div class="box-body">
        <div class="d-flex justify-content-between">
            <div>
                <div class="top-bar-title padding-bottom pull-left">Addons</div>
            </div>

            <div>
                <a class="btn btn-theme" data-toggle="collapse" href="#addonUpload" role="button" aria-expanded="false" aria-controls="addonUpload">Upload Addon</a>

            </div>
        </div>
    </div>
</div>

<div class="row">
<div class="col-md-12">
    <div class="collapse box box-info" id="addonUpload">
      <div class="box-body">
        <div class="row" style=" margin-top: 30px;">
            <form action="{{ url(\Config::get('adminPrefix').'/addons') }}" class="form-horizontal" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="box-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="purchase_code">
                            Purchase Code
                        </label>
                        <div class="col-sm-6">
                            <input class="form-control" placeholder="Enter addon purchase code" name="purchase_code" type="text" id="purchase_code"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="addon_zip">
                            Addon (zip)
                        </label>
                        <div class="col-sm-6">
                            <input type="file" name="addon_zip" id="addon_zip">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="inputEmail3"></label>
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-theme pull-right" id="users_create"><i class="fa fa-spinner fa-spin" style="display: none;"></i> <span id="users_create_text">Submit</span></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
      </div>
    </div>
</div>
</div>

    <div class="row">
        @foreach($addons as $addon)
        <div class="col-md-4">
            <div class="box box-info">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="https://images.unsplash.com/photo-1576408083550-04cd8224194d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80" alt="..." class="img-thumbnail">
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="top-bar-title padding-bottom pull-left">{{ $addon->name }} <span class="badge badge-secondary">{{ $addon->version }}</span></div>
                        </div>
                         <div class="col-md-2">
                            <a href="{{ url(\Config::get('adminPrefix').'/addon/activation', [($addon->activated == '0' ? '1' : '0'), $addon->id]) }}" class="btn btn-{{($addon->activated == '1' ? 'success' : 'danger')}} btn-flat pull-right">{{($addon->activated == '1' ? 'Deactivate' : 'Activate')}}</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        @endforeach
        
    </div>
@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/js/jquery.validate.min.js') }}" type="text/javascript"></script>

<!-- jquery.validate additional-methods -->
<script src="{{ asset('public/dist/js/jquery-validation-1.17.0/dist/additional-methods.min.js') }}" type="text/javascript"></script>

<!-- bootstrap-toggle -->
<script src="{{ asset('public/backend/bootstrap-toggle/js/bootstrap-toggle.min.js') }}" type="text/javascript"></script>

<script type="text/javascript">

</script>

@endpush
