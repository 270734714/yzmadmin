$(function(){
	$('.login-box>ul>li').click(function(){
		$(this).addClass('cur').siblings().removeClass('cur');
		idx=$(this).index();
		$("form").hide();
		$("form").eq(idx).show();
	});




	$('.putongDL>a').click(function(){
		$(this).parent().hide().siblings().show();
	});

	$(".putong").click(function(){
		$(this).parent().prev().prev().show();
		$(this).parent().prev().hide();
		$(this).parent().hide();
	});


	$('.login-box>a').click(function(){
		$(this).parent().parent().hide().siblings().show();
	});
	$('.change-btn').click(function(){
		$(this).parent().hide().siblings().show();
	});
	$('.pc-btn').click(function(){
		$(this).parent().hide().siblings().show();
	});


});