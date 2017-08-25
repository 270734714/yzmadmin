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
});