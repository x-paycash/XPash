<script src="{{theme_asset('public/js/jquery.min.js')}}" type="text/javascript"></script>
<script src="{{theme_asset('public/js/bootstrap.min.js')}}" type="text/javascript"></script>
<script src="{{theme_asset('public/js/jquery.waypoints.min.js')}}" type="text/javascript"></script>
<script src="{{theme_asset('public/js/main.js')}}" type="text/javascript"></script>
<script src="{{theme_asset('public/js/moment.js')}}" type="text/javascript"></script>

<!--Google Analytics Tracking Code-->
{!! getGoogleAnalyticsTrackingCode() !!}

<script type="text/javascript">
</script>

<script type="text/javascript">

	function log(log) {
		console.log(log);
	}

	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});

	$(function () {
		$('[data-toggle="tooltip"]').tooltip()
	})

	function resizeHeaderOnScroll() {
		const distanceY = window.pageYOffset || document.documentElement.scrollTop,
		shrinkOn = 100,
		headerEl = document.getElementById('js-header');
		
		if (headerEl) {
			if (distanceY > shrinkOn) {
				headerEl.classList.add("smaller-header");
				$("#logo_container").attr('src', SITE_URL + '/public/frontend/images/logo_sm.png');
			} else {
				headerEl.classList.remove("smaller-header");
				$("#logo_container").attr('src', SITE_URL + '/public/frontend/images/logo.png');
			}
		}
	}
	window.addEventListener('scroll', resizeHeaderOnScroll);

	//Language script
	$('#lang').on('change', function (e)
	{
		e.preventDefault();
		lang = $(this).val();
		url = '{{url('change-lang')}}';
		$.ajax({
			type: 'get',
			url: url,
			data: {lang: lang},
			success: function (msg)
			{
				if (msg == 1)
				{
					location.reload();
				}
			}
		});
	});



	
// custom dropdown
	
function create_custom_dropdowns() {
$('.select-custom').each(function(i, select) {
	if (!$(this).next().hasClass('dropdown')) {
	$(this).after('<div class="dropdown ' + ($(this).attr('class') || '') + '" tabindex="0"><span class="current"></span><div class="list"><ul></ul></div></div>');
	var dropdown = $(this).next();
	var options = $(select).find('option');
	var selected = $(this).find('option:selected');
	dropdown.find('.current').html(selected.data('display-text') || selected.text());
	options.each(function(j, o) {
		var display = $(o).data('display-text') || '';
		dropdown.find('ul').append('<li class="option ' + ($(o).is(':selected') ? 'selected' : '') + '" data-value="' + $(o).val() + '" data-display-text="' + display + '">' + $(o).text() + '</li>');
	});
	}
});
}

// Event listeners

// Open/close
$(document).on('click', '.dropdown', function(event) {
$('.dropdown').not($(this)).removeClass('open');
$(this).toggleClass('open');
if ($(this).hasClass('open')) {
	$(this).find('.option').attr('tabindex', 0);
	$(this).find('.selected').focus();
} else {
	$(this).find('.option').removeAttr('tabindex');
	$(this).focus();
}
});
// Close when clicking outside
$(document).on('click', function(event) {
if ($(event.target).closest('.dropdown').length === 0) {
	$('.dropdown').removeClass('open');
	$('.dropdown .option').removeAttr('tabindex');
}
event.stopPropagation();
});
// Option click
$(document).on('click', '.dropdown .option', function(event) {
$(this).closest('.list').find('.selected').removeClass('selected');
$(this).addClass('selected');
var text = $(this).data('display-text') || $(this).text();
$(this).closest('.dropdown').find('.current').text(text);
$(this).closest('.dropdown').prev('select').val($(this).data('value')).trigger('change');
});

// Keyboard events
$(document).on('keydown', '.dropdown', function(event) {
var focused_option = $($(this).find('.list .option:focus')[0] || $(this).find('.list .option.selected')[0]);
// Space or Enter
if (event.keyCode == 32 || event.keyCode == 13) {
	if ($(this).hasClass('open')) {
	focused_option.trigger('click');
	} else {
	$(this).trigger('click');
	}
	return false;
	// Down
} else if (event.keyCode == 40) {
	if (!$(this).hasClass('open')) {
	$(this).trigger('click');
	} else {
	focused_option.next().focus();
	}
	return false;
	// Up
} else if (event.keyCode == 38) {
	if (!$(this).hasClass('open')) {
	$(this).trigger('click');
	} else {
	var focused_option = $($(this).find('.list .option:focus')[0] || $(this).find('.list .option.selected')[0]);
	focused_option.prev().focus();
	}
	return false;
// Esc
} else if (event.keyCode == 27) {
	if ($(this).hasClass('open')) {
	$(this).trigger('click');
	}
	return false;
}
});

$(document).ready(function() {
create_custom_dropdowns();
});

</script>



 <!-- Start of REVE Chat Script-->
 <script type='text/javascript'>
 window.$_REVECHAT_API || (function(d, w) { var r = $_REVECHAT_API = function(c) {r._.push(c);}; w.__revechat_account='10477442';w.__revechat_version=2;
   r._= []; var rc = d.createElement('script'); rc.type = 'text/javascript'; rc.async = true; rc.setAttribute('charset', 'utf-8');
   rc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.revechat.com/widget/scripts/new-livechat.js?'+new Date().getTime();
   var s = d.getElementsByTagName('script')[0]; s.parentNode.insertBefore(rc, s);
 })(document, window);
</script>
<!-- End of REVE Chat Script -->
