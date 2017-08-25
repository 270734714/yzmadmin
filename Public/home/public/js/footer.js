$(function(){
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
})