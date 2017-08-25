$(function(){
	$('#del').click(function(){
		$('.scdd').remove();
	});



	hour=2;
	times=hour*60*60;
	function daojishi(){
		hours=Math.floor(times/60/60);
		
		min=Math.floor((times-hours*60*60)/60);
		if(min<10){
			min="0"+min;
		}
		str='还剩'+hours+'时'+min+'分';
		time=document.getElementById('time');
		time.innerHTML=str;
		times--;
	}

	setInterval(daojishi,1000);
});