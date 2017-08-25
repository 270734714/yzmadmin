$(function(){


	// 搜索框
	$(".header-search .header-inner .search-box .search-box-body>input").focus(function(){
		$(this).attr('placeholder','');
		$(this).parent().siblings('.search-hot').hide();
	});

	$(".header-search .header-inner .search-box .search-box-body>input").blur(function(){
		$(this).attr('placeholder','邮轮日');
		$(this).parent().siblings('.search-hot').show();

	});



	// 首页导航

	$(".menu-list>li").hover(function(){
		$(this).children('.top-wrap').show();
	},function(){
		$(this).children('.top-wrap').hide();
	});


	//左侧导航鼠标经过
	$('.catalog-first').hover(function(){
		$(this).addClass('catalog-first-one').siblings().removeClass('catalog-first-one');
	},function(){
		$(this).removeClass('catalog-first-one');
	});
	$('.catalog-first').click(function(){
		$(this).addClass('catalog-first-two').siblings().removeClass('catalog-first-two').removeClass('catalog-first-one');
	});


	//左侧导航鼠标点击
	$('.catalog-first').click(function(){
		djI=$(this).index();
		// alert(djI);
		// $(this).siblings(":eq(0)").removeClass('catalog-first-one');
		$(this).parent().next().find('.s-cc-form').eq(djI).show();
		console.log($(this).parent().next().find('.s-cc-form'));
	});

	//点击x号关闭
	$('.s-c-chaxun>a').click(function(){
		$(this).parent().hide();
	});

	// 鼠标经过二级菜单显示三级菜单

	$(".s-c-chaxun>.s-cc-form>div").hide();
	$('.catalog-first:not(:eq(0))').click(function(){
		$(this).index();
		$(".s-c-chaxun").show();
		$(".s-c-chaxun>.s-cc-form>div").eq($(this).index()-1).show().siblings().hide();
	});
	$('.catalog-first:eq(0)').click(function(){
		$(".s-c-chaxun").hide();
	});

	// $('catalog-seconds').hover(function(){
	// 	$(this).find('catalog-seconds>a').css('color':'#f60');
	// })



	// 轮播图
	var lunI=0;
	var ding=null;
	function move(){
		lunI++;
		if(lunI==6){
			lunI=0;
		}
		$(".activity-image>li").eq(lunI).addClass('active').siblings().removeClass('active');
		$(".activity-title>li").eq(lunI).addClass('active').siblings().removeClass('active');
	}
	function moveLeft(){
		lunI--;
		if(lunI<0){
			lunI=5;
		}
		$(".activity-image>li").eq(lunI).addClass('active').siblings().removeClass('active');
		$(".activity-title>li").eq(lunI).addClass('active').siblings().removeClass('active');
	}
	ding=setInterval(move,3000);
	$(".activity-title>li").hover(function(){
		clearInterval(ding);
		lunI=$(this).index();
		$(".activity-title>li").eq(lunI).addClass('active').siblings().removeClass('active');
		$(".activity-image>li").eq(lunI).addClass('active').siblings().removeClass('active');
	},function(){
		ding=setInterval(move,3000);
	});


	// 鼠标点击
	$(".tn-bc-center .btn-left").click(function(){
		moveLeft();
	});
	$(".tn-bc-center .btn-right").click(function(){		
		move();
	});

	// 鼠标经过停止
	$(".tn-banner-center").hover(function(){
		clearInterval(ding);
	},function(){
		ding=setInterval(move,3000);
	});


	// 手风琴

	$(".sfq-image li>img").mouseover(function(){
		$(this).stop(true).animate({'left':'-100px'},250);
		$(this).parent().siblings().children("img").stop(true).animate({'left':'0px'},250);
	});

	$('.sfq-image li').mouseover(function(){
		$(this).stop(true).animate({'width':'122px'},250).
		siblings().stop(true).animate({'width':'97px'},250);
	});




	//右导航轮播图
	var zhuan=null;
	function piao(){
		// clearInterval(ding);
		$('.right-order>ul>li').css('top','-1px');
		$('.right-order>ul>li').animate({'top':'-63px'},2000);
		$('.right-order>ul>li').eq(0).appendTo('.right-order>ul');
	}
	zhuan=setInterval(piao,4000);



	//鼠标经过题目变色
	$('.tcl-b-tit>li').hover(function(){
		whI=$(this).index();
		$(this).addClass('current').siblings().removeClass('current');
		$(this).parent().parent().next().find('.body-list').eq(whI).addClass('current-body').siblings().removeClass('current-body');
	});


	$('.tabs>li').hover(function(){
		whI=$(this).index();
		$(this).addClass('cur').siblings().removeClass('cur');
		$(this).parent().parent().next().find('.list-body').eq(whI).addClass('list-xianshi').siblings().removeClass('list-xianshi');
	});


	//右侧点击切换
	$('.aside-tab .tabss>li').hover(function(){
		$(this).addClass('curr').siblings().removeClass('curr');
	});
	$('.aside-tab .tabss>li').click(function(){
		ybI=$(this).index();
		$(this).parent().next().find('.item-list').eq(ybI).addClass('currs').siblings().removeClass('currs');
		// console.log($(this).parent().next().find('.item-list').eq(ybI));
	});


	//右侧点击切换图片
	$('.ic-btn-left').click(function(){
		$(this).parent().parent().next().find('.c-list-item').css('left','0px');
	});
	$('.ic-btn-right').click(function(){
		$(this).parent().parent().next().find('.c-list-item').css('left','-225px');
	});



	//右侧最新评论展示
	var dong=null;
	function yi(){
		// clearInterval(ding);
		$('.comment-list>li').css('top','0px');
		$('.comment-list>li').animate({'top':'-192px'},2000);
		$('.comment-list>li').eq(0).appendTo('.comment-list');
	}
	dong=setInterval(yi,4000);



	//底部旅游局轮播
	var bo=0;
	function lyj(){
		// clearInterval(ding);
		var tourismListRows=Math.ceil($('.tourism-wrap-inner>.tourism-list>li').length/9);
		bo++;
		if(bo>=tourismListRows-1){
			bo=0;
		}
		$('.tourism-wrap-inner>.tourism-list>li').animate({'top':-bo*90+'px'},1000);
		// console.log(tourismListRows);
	}
	boInterval=setInterval(lyj,2000);




	//底部最新预定
	// var heng=0;
	// function lyj(){
	// 	// clearInterval(ding);
	// 	var tourismList=Math.ceil($('.fl-w-940>ul>li').length/2);
	// 	heng++;
	// 	if(heng>=tourismList-1){
	// 		heng=0;
	// 	}
	// 	$('.fl-w-940>ul>li').animate({'left':-heng*474+'px'},1000);
	// 	// console.log(tourismList);
	// }
	// hengInterval=setInterval(lyj,2000);




	//鼠标经过变色
	$('#show_tab>a').hover(function(){
		gdI=$(this).index();
		$(this).css('color','#f80');
		// console.log(gdI);
	},function(){
		$(this).css('color','#999');
	});
	


	//鼠标点击出现更多
	$('.gd>a').click(function(){
		$(this).parent().parent().siblings('#unshow_tab').show();
		$(this).parent().parent().hide();
	});




	//楼层监听
	var oneHeight=$(".tl-l-head>h2").eq(0).offset().top; 
	

	$(window).scroll(function(){
		var floatMenuTop=$(".float-menu>ul>li").eq(6).offset().top;
		heights=$(this).scrollTop();
		if (floatMenuTop>= oneHeight-200) {
			$(".float-menu").show();			
		}else{
			$(".float-menu").hide();

		}

		guHeight=$(".float-menu").offset().top;
		// 判断
		$(".tl-l-head>h2").each(function(){
			h=$(this).offset().top;
			if (guHeight>h) {
				idx=$(this).index(".tl-l-head>h2");
				var colordd=$(".float-menu>ul>li.gund").eq(idx).attr('idxs');
				$(".float-menu>ul>li.gund").eq(idx).addClass('actys').css('background-color',colordd).siblings().removeClass('actys').css("background-color","#fff");
			};
		});
	});



	// 倒计时
	day=8;
	hour=18;
	minutes=46;
	times=day*24*60*60+hour*60*60+minutes*60;
	function daojishi(){
		days=Math.floor(times/60/60/24);
		hours=Math.floor((times-days*24*60*60)/60/60);
		if(hours<10){
			hours="0"+hours;
		}
		min=Math.floor((times-days*24*60*60-hours*60*60)/60);
		if(min<10){
			min="0"+min;
		}
		$(".tnDay").text(days);
		$(".tnHour").text(hours);
		$(".tnMin").text(min);		
		times--;
	}

	setInterval(daojishi,1000);

	//侧边
	$('.tight-com li ul li').hover(function(){
		$(this).addClass('rc_hover').parent().siblings().children().removeClass('rc_hover');
	});


	//回到顶部
    $("#rcBackToTop").click(
        function(){
        timer = setInterval(function(){
        var osTop =document.documentElement.scrollTop || document.body.scrollTop;
        var ispeed = Math.floor(-osTop / 6);
        document.documentElement.scrollTop = document.body.scrollTop = osTop + ispeed;
        
        isTop = true;
        if(osTop == 0){
            clearInterval(timer);
        }
        },30);
    }); 



    $('.j-b-type>ul>li>label').click(function(){
    	$(this).addClass('tn_switch').parent().siblings().children('label').removeClass('tn_switch');
    });
 });