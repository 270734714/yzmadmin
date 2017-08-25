$(function(){

	$('.tel>input').focus(function(){
		$(this).parent().next('div').show();
	});

	
		var str=$(this).val();
		preg=/^1(8\d|7[07]|5\d|47|3\d)\d{8}$/;
		if(str.match(preg)){
			$('.shuru').parent().next().removeClass('err');
		}else{
			$('.shuru').parent().next().addClass('err');
		};
});