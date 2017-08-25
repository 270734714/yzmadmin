$(function(){


	$('.cardInput').mouseover(function(){
		$('.pay-select').animate({'opacity':'0.6'},500);
		$('.c-b-bor').animate({'opacity':'0.6'},500);
	});
	$('.cardInput').mouseout(function(){
		$('.pay-select').animate({'opacity':'1'},1000);
		$('.c-b-bor').animate({'opacity':'1'},1000);
	});
});