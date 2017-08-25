$(function(){
	 $(".top").click(function(){
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





	var height=$('.navsider_container').offset().top;
	$(window).scroll(function(){
		heights=$(this).scrollTop();
		if(heights>=height+400){
			$('.navsider_container').show();
		}else{
			$('.navsider_container').hide();
		}

		hh=$('.navsider_container').offset().top;
		$('.wrapper div').each(function(){
			h=$(this).offset().top;
			if(hh>=h-200){
				idx=$(this).index('.wrapper div');
				$('.navsider_container .nav_links>a').eq(idx).addClass('cur').siblings().removeClass('cur');
			}
		})
	});
	// $('.navsider_container .nav_links>a').click(function(){
	// 	x=$(this).index();
	// 	xh=$(".wrapper div").eq(x).offset().top;
	// 	$(window).scrollTop(xh-100);
	// })
	});