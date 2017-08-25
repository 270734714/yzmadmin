$(function(){

	// 图片轮播
	$('.gy-thumbs>ul>li>a').click(function(){
		$(this).addClass('gy-active').parent().siblings().children('a').removeClass('gy-active');
		$(".gy-img-wrap>img").attr('src',$(this).attr('href'));
		return false;
	});
	$('.gy-next').click(function(){
		if($(".gy-thumbs .gy-active").parent().next().length==0){
			$(".gy-img-wrap>img").attr('src',$('.gy-thumbs>ul>li').eq(0).children().attr("href"));
			$('.gy-thumbs>ul>li').eq(0).children().addClass('gy-active').parent().siblings().children('a').removeClass('gy-active');
		}else{
			$(".gy-img-wrap>img").attr('src',$(".gy-thumbs .gy-active").parent().next().children().attr("href"));
			$(".gy-thumbs .gy-active").parent().next().children().addClass('gy-active').parent().siblings().children('a').removeClass('gy-active');
		}
		
	});
	$('.gy-prev').click(function(){
		if($(".gy-thumbs .gy-active").parent().prev().length==0){
			$(".gy-img-wrap>img").attr('src',$('.gy-thumbs>ul>li').eq(1).children().attr("href"));
			$('.gy-thumbs>ul>li').eq(1).children().addClass('gy-active').parent().siblings().children('a').removeClass('gy-active');
		}else{
			$(".gy-img-wrap>img").attr('src',$(".gy-thumbs .gy-active").parent().prev().children().attr("href"));
			$(".gy-thumbs .gy-active").parent().prev().children().addClass('gy-active').parent().siblings().children('a').removeClass('gy-active');
		}
	});




	$('.showPic .tuijian>ul>li:not(:eq(0))').mouseover(function(){
		$(this).find('.pic').stop(true).animate({'width':'70px'},500);
		$(this).find('a').css({'color':'#f80','text-decoration':' underline'});
		$(this).find('.des').stop(true).animate({'width':'82px','margin-left':'8px'},500);
		$('.showPic .tuijian>ul>li:eq(0)').find('.pic').stop(true).animate({'width':'0px'},500);
		$('.showPic .tuijian>ul>li:eq(0)').find('a').css({'color':'#000','text-decoration':' none'});
		$('.showPic .tuijian>ul>li:eq(0)').find('.des').stop(true).animate({'width':'125px','margin-left':'25px'},500);
	});
	$('.showPic .tuijian>ul>li:not(:eq(0))').mouseout(function(){
		$(this).find('.pic').stop(true).animate({'width':'0px'},500);
		$(this).find('a').css({'color':'#000','text-decoration':' none'});
		$(this).find('.des').stop(true).animate({'width':'125px','margin-left':'25px'},500);
		$('.showPic .tuijian>ul>li:eq(0)').find('.pic').stop(true).animate({'width':'70px'},500);
		$('.showPic .tuijian>ul>li:eq(0)').find('a').css({'color':'#f80','text-decoration':' underline'});
		$('.showPic .tuijian>ul>li:eq(0)').find('.des').stop(true).animate({'width':'82px','margin-left':'8px'},500);
	});








	var height=$('.tabcn').offset().top;
	$(window).scroll(function(){
		heights=$(this).scrollTop();
		if(heights>=height){
			$('.tabcn').css({'position':'fixed','top':"0px"});
		}else{
			$('.tabcn').css({'position':'static','top':"0px"});
		}

		hh=$('.tabcn').offset().top;
		$('.pkg-detail-infor>h2').each(function(){
			h=$(this).offset().top;
			if(hh>=h-200){
				idx=$(this).index('.pkg-detail-infor>h2');
				$('.tabcn>ul>li').eq(idx).addClass('current').siblings().removeClass('current');
			}
		})
	});
	$('.tabcn>ul>li').click(function(){
		x=$(this).index();
		xh=$(".pkg-detail-infor>h2").eq(x).offset().top;
		$(window).scrollTop(xh-100);
	})
	

    var dyh=$('.sidebarPrv').offset().top;
	$(window).scroll(function(){
		dyhs=$(this).scrollTop();
		if(dyhs>=dyh && dyhs<=dyh+600){
			$('.sidebarPrv').css({'position':'fixed',"top":"45px","left":"107px"});
		}else{
			$('.sidebarPrv').css('position','static');
		}
	});



	// 成人人数加减
	$('#adA-le').click(function(){
		num=$(this).next().attr('value');
		num=Number(num)-1;
		if(num<=1){
			num=1;
		}
		$(this).next().attr('value',num);

	});
	$('#adA-ri').click(function(){
		num=$(this).prev().attr('value');
		num=Number(num)+1;
		$(this).prev().attr('value',num);
	});

		// zhi=$('#adA-le').next().attr('value');
		// if(zhi>=2){
		// 	$('#adA-le').children('.acquisitive').css('background-position','-56px -53px;');
		// }
	// 儿童人数加减

	$('#adC-le').click(function(){
		num=$(this).next().attr('value');
		num=Number(num)-1;
		if(num<=0){
			num=0;
		}
		$(this).next().attr('value',num);
	});
	$('#adC-ri').click(function(){
		num=$(this).prev().attr('value');
		num=Number(num)+1;
		$(this).prev().attr('value',num);
	});
});