$(function(){
	$('.remind-tip span.gift-tip').hover(function(){
		$(this).parent().children('.gift-detail').toggle();
	});


	$('.J_edit').click(function(){
		$('.personal-info').children('.title-val').hide();
		$('.personal-info').children('.input-val').show();
		$('.name-tip').show();
		$(this).hide();
		$(this).siblings().show();
	});


	$('.J_cancel').click(function(){
		$('.personal-info').children('.input-val').hide();
		$('.personal-info').children('.title-val').show();
		$('.name-tip').hide();
		$(this).hide();
		$(this).siblings('.J_save').hide();
		$(this).siblings('.J_edit').show();
	});
});