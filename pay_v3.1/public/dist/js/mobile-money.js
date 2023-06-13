// Mobile Money

// Validate Mobile Money Add form
$('#addMobileMoneyForm').validate({
	rules: {
		default: {
			required: true
		},
		status: {
			required: true
		},
		holder_name: {
			required: true
		},
		mobilemoney_name: {
			required: true,
		},
		merchant_code: {
			required: true,
		},
		country: {
			required: true
		},
		mobilemoney_logo: {
			extension: "png|jpg|jpeg|gif|bmp|ico",
		}
	},
	messages: {
		mobilemoney_logo: {
		extension: "Please select (png, jpg, jpeg, gif, bmp or ico) file!"
		},
	},
});


$('#editMobileMoneyBankForm').validate({
	rules: {
		edit_holder_name: {
			required: true
		},
		edit_mobilemoney_name: {
			required: true,
		},
		edit_merchant_code: {
			required: true,
		},
		edit_country: {
			required: true
		},
		edit_default: {
			required: true
		},
		status: {
			required: true
		},

		edit_mobile_money_logo: {
			extension: "png|jpg|jpeg|gif|bmp|ico",
		}
	},
	messages: {
		edit_mobile_money_logo: {
		extension: "Please select (png, jpg, jpeg, gif, bmp or ico) file!"
		},
	},
});

function handleFileSelectMobileMoney()
{
	var input = this;
	if (input.files && input.files.length)
	{
		var reader = new FileReader();
		this.enabled = false;
		reader.onload = (function (e)
		{
			if (!input.files[0].name.match(/.(png|jpg|jpeg|gif|bmp|ico)$/i)) {
				$('#mobilemoney-demo-logo-preview').attr({src: defaultImagePath});
				$('#mobile_money_submit_btn').prop('disabled',true);
			} else {
				$('#mobilemoney-demo-logo-preview').attr({src: reader.result});
				$('#mobile_money_submit_btn').prop('disabled',false);
			}
		});
		reader.readAsDataURL(input.files[0]);
	}
}

// Preview Add Form Logo
$('#mobilemoney_logo').change(handleFileSelectMobileMoney);


function handleFileSelectMobileMoneyEdit()
{
	var input = this;
	if (input.files && input.files.length) {
		var reader = new FileReader();
		this.enabled = false;
		reader.onload = (function (e)
		{
			if (!input.files[0].name.match(/.(png|jpg|jpeg|gif|bmp|ico)$/i)) {
				$('.thumb-mobile-money-logo').attr({src: defaultImagePath});
				$('.remove_edit_mobile-money_logo_preview').remove();
				$('#edit_mobile_money_submit_btn').prop('disabled',true);
			} else {
				let logo = $('.thumb-mobile-money-logo').attr('data-mobile-money-logo');
				if (logo != '') {
					$('.thumb-mobile-money-logo').attr({src: reader.result});
					$('.remove_edit_mobile-money_logo_preview').remove();
				}
				$('.thumb-mobile-money-logo').attr({src: reader.result});
				$('#edit_mobile_money_submit_btn').prop('disabled',false);
			}
		});
		reader.readAsDataURL(input.files[0]);
	}
}

$('#edit_mobile_money_logo').change(handleFileSelectMobileMoneyEdit);

// Store Mobile Money to Database
$('#addMobileMoneyForm').submit(function(event)
{
	event.preventDefault();

	var form_data = new FormData();
	form_data.append('_token', token);
	form_data.append('currency_id', $('#currency_id').val());
	form_data.append('paymentMethod', $('#paymentMethod').val());
	form_data.append('default', $('#default').val());
	form_data.append('status', $('#status').val());
	form_data.append('holder_name', $('#holder_name').val());
	form_data.append('merchant_code', $('#merchant_code').val());
	form_data.append('mobilemoney_name', $('#mobilemoney_name').val());
	form_data.append('country', $('#country').val());

	var mobilemoney_logo = document.getElementById('mobilemoney_logo');
	form_data.append('mobilemoney_logo', mobilemoney_logo.files[0]);

	$.ajax({
		method: "POST",
		url: SITE_URL + "/admin/settings/payment-methods/add-mobile-money",
		cache: false,
		dataType:'json',
		contentType: false,
		processData: false,
		data: form_data,
	})
	.done(function(response)
	{
		if (response.status == true)
		{
			$('#edit_mobile_money_currency_id').val(response.currency_id);
			$('#edit_mobile_money_paymentMethod').val(response.paymentMethod);

			$('#addMobileMoneyModal').modal('hide');
			swal({title: "Success!", text: response.message, type: "success"},
				function(){
					window.location.reload();
				}
			);
		}
	});
});


$('#editMobileMoneyForm').submit(function(event)
{
	event.preventDefault();

	var form_data = new FormData();
	form_data.append('_token', token);
	form_data.append('mobilemoney_id', $('#mobilemoney_id').val());
	form_data.append('file_id', $("#mobile_money_file_id").val());
	form_data.append('currencyPaymentMethodId', $('#currencyMobileMoneyPaymentMethodId').val());
	form_data.append('currency_id', $('#edit_mobile_money_currency_id').val());
	form_data.append('paymentMethod', $('#edit_mobile_money_paymentMethod').val());
	form_data.append('default', $('#edit_default').val());
	form_data.append('status', $('#edit_status').val());
	form_data.append('holder_name', $('#edit_holder_name').val());
	form_data.append('merchant_code', $('#edit_merchant_code').val());
	form_data.append('mobilemoney_name', $('#edit_mobilemoney_name').val());
	form_data.append('country', $('#edit_country').val());

	var mobilemoney_logo = document.getElementById('edit_mobile_money_logo');
	form_data.append('mobilemoney_logo', mobilemoney_logo.files[0]);

	$.ajax({
		method: "POST",
		url: SITE_URL + "/admin/settings/payment-methods/update-mobile-money",
		cache: false,
		dataType:'json',
		contentType: false,
		processData: false,
		data: form_data,
	})
	.done(function(response)
	{
		if (response.status == true)
		{
			$('#editMobileMoneyModal').modal('hide');
			swal({title: "Success!", text: response.message, type: "success"},
				function(){
					window.location.reload();
				}
			);
		}
	})
	.fail(function(){
		swal('Oops...', 'Something went wrong with ajax !', 'error');
	});
});


// Mobile Money Edit Settings
$(document).on('click','.mobile-money-edit-setting', function (e)
{
	e.preventDefault();

	var mobilemoney_id = $(this).data('id');
	var currency_id    = $('#currency_id').val();
	var paymentMethod  = $('#paymentMethod').val();

	if (mobilemoney_id && currency_id)
	{
		getMobileMoneyCpmId(mobilemoney_id,currency_id,paymentMethod);
	}
});


function getMobileMoneyCpmId(mobilemoney_id,currency_id,paymentMethod)
{
	$.ajax({
		headers:
		{
			'X-CSRF-TOKEN': token
		},
		method: "POST",
		url: SITE_URL + "/admin/settings/payment-methods/get-mobilemoney-CpmId",
		cache: false,
		dataType:'json',
		data: {
		'mobilemoney_id': mobilemoney_id,
		'currency_id': currency_id,
		},
	})
	.done(function(response)
	{
		var preview_edit_mobile_money_logo = $('.preview_edit_mobile_money_logo'), img;

		if (response.status == true)
		{
			$('#mobilemoney_id').val(mobilemoney_id);
			$('#edit_mobile_money_currency_id').val(currency_id);
			$('#edit_mobile_money_paymentMethod').val(paymentMethod);
			$('#currencyMobileMoneyPaymentMethodId').val(response.cpmId);

			$('#edit_default').val(response.is_default);

			var activated_for = JSON.parse(response.cpmActivatedFor);
			if (activated_for.hasOwnProperty('deposit')) {
				$('#edit_status').val('Active');
			} else {
				$('#edit_status').val('Inactive');
			}
			$('#edit_holder_name').val(response.holder_name);
			$('#edit_mobilemoney_name').val(response.mobilemoney_name);
			$('#edit_country').val(response.country_id);
			$('#edit_merchant_code').val(response.merchant_code);

			if (response.mobilemoney_logo && response.file_id) {
				//et file ID of bank logo
				$("#mobile_money_file_id").val(response.file_id);

				$(".preview_edit_mobile_money_logo").html(`<img class="thumb-mobile-money-logo" data-mobile-money-logo="${response.mobilemoney_logo}" data-file-id="${response.file_id}"
													src="${SITE_URL}/public/uploads/files/mobilemoney_logos/${response.mobilemoney_logo}" width="120" height="80"/><span class="remove_edit_mobilemoney_logo_preview"></span>`);
			} else {
				$(".preview_edit_mobile_money_logo").html(`<img class="thumb-mobile-money-logo" src="${SITE_URL}/public/uploads/userPic/default-image.png" width="120" height="80"/>`);
			}

			$('#editMobileMoneyModal').modal();
		} else {
			swal('Oops...', 'No response !', 'error');
		}
	});
}

// Mobile Money DELETE
$(document).on('click', '.mobilemoney_delete', function()
{
	var mobilemoney_id = $(this).data('id');
	log(mobilemoney_id);

	swal({
		title: "Are you sure you want to delete?",
		text: "You won't be able to revert this!",
		type: "warning",
		showCancelButton: true,
		confirmButtonText: "Yes, delete it!",
		cancelButtonText: "Cancel",
		closeOnConfirm: false,
		showLoaderOnConfirm: true,
		closeOnCancel: true
	},
	function(isConfirm)
	{
		if (!isConfirm) return;

		if (isConfirm) {
			$.ajax({
				headers:
				{
					'X-CSRF-TOKEN': token
				},
				method: "POST",
				url: SITE_URL+"/admin/settings/payment-methods/delete-mobile-money",
				dataType: "json",
				cache: false,
				data: {
					'mobilemoney_id': mobilemoney_id,
				}
			})
			.done(function(response)
			{
				if (response.status == true) {
				swal({title: "Deleted!", text: response.message, type:response.type},
					function(){
						window.location.reload();
					}
				);
				} else {
				    swal("Oops...", response.message, response.type);
				}
			})
			.fail(function(){
				swal('Oops...', 'Something went wrong with ajax !', 'error');
			});
		} else {
			swal("Cancelled", "You Cancelled", "error");
		}
	});
});
