$(function(){
	$('.oi-list>span.collapse').click(function(){
		$(this).parent().parent().parent().slideUp();
		$(this).parent().parent().parent().prev().find('i').css('background-position','0px -104px');
	});
	$('.con-t>h4 label').click(function(){
		$(this).parent().next().slideToggle();
	});


	$('.date_input>label>input').focus(function(){
		$(this).next().next('img').show();
	});
	$('.date_input>label>input').blur(function(){
		$(this).next().next('img').hide();
	});



	var height=$('.jiesuan').offset().top;
	$(window).scroll(function(){
		h=$(this).scrollTop();
		if(h>=height){
			$('.jiesuan').css({'position':'fixed','top':"0px",'left':'978.5px'});
		}else{
			$('.jiesuan').css({'position':'static','top':"0px",'left':'0px'});
		}
	});






	$('.plus').click(function(){
		num=$(this).prev().attr('value');
		num=Number(num)+1;
		if(num>=99){
			num=99;
		}
		$(this).prev().attr('value',num);
		$('.pn_1').text(num+' '+'x'+' '+"¥202");
		dw=$('.jiesuan').find('.pn_1').text().indexOf('¥');
		price=$('.jiesuan').find('.pn_1').text().substr(dw+1);
		tot=Number(price)*num;
		$('.jiesuan').find('.pn_2>em').text(tot);
		$('#totalPayNet').text("¥"+tot);
	});
	$('.min').click(function(){
		num=$(this).next().attr('value');
		num=Number(num)-1;
		if(num>=1){
			$(this).next().attr('value',num);
			$('.pn_1').text(num+' '+'x'+' '+"¥202");
			dw=$('.jiesuan').find('.pn_1').text().indexOf('¥');
			price=$('.jiesuan').find('.pn_1').text().substr(dw+1);
			tot=$('.jiesuan').find('.pn_2>em').text();
			tot=tot-price;
			$('.jiesuan').find('.pn_2>em').text(tot);
			$('#totalPayNet').text("¥"+tot);
			}else{
				num=1;
			}
	})
});