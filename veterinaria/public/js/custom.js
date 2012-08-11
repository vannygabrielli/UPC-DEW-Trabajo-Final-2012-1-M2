/*
	custom.js for Epica
	2012-03-27
*/

$(document).delegate('.user-name', 'click', function() {
	if($(this).next().hasClass('inactive')){
		$('.logout ').removeClass('inactive');
		$('.logout ').addClass('active');
	} else {
		$('.logout ').removeClass('active');
		$('.logout ').addClass('inactive');
	}
});