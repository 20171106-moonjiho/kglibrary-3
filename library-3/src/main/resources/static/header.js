	function chk(){
		if(cc == 1){
			$(".menu_bar .gnb_bg").slideDown(0);
			$(".menu_bar ul li ul").css("display","block").slideDown(0);
			$(".two_depth").slideDown(0);
			$(".two_depth ul").css("opacity","1");
			$(".two_depth ul").css("height","auto");
			$(".two_depth ul").css("transition","all .1s .1s ease-in-out");
			$(".two_depth ul").css("-webkit-transition","all .1s .1s ease-in-out");
			$(".two_depth ul").css("transform","translateY(0)");
			$(".two_depth ul").css("-webkit-transform","translateY(0)");
		}else{
			$(".menu_bar .gnb_bg").slideUp(0);
			$(".two_depth").slideUp(0);
			$(".two_depth ul").css("opacity","0");
			$(".two_depth ul").css("height","1px");
			$(".two_depth ul").css("transition","all .1s .1s ease-in-out");
			$(".two_depth ul").css("-webkit-transition","all .1s .1s ease-in-out");
			$(".two_depth ul").css("transform","translateY(30px)");
			$(".two_depth ul").css("-webkit-transform","translateY(30px)");
		}
		}
		$(function(){
		$('.menu_area').mouseover(function(){
			setTimeout(chk, 100);
			cc = 1;
			$(this).addClass('active');
		});
		$('.menu_area').mouseout(function(){
			setTimeout(chk, 400);
			cc = 0;
			$('#menu_area ul li').removeClass('active');
		});
		$('.menu_area ul li a').focus(function(){
			setTimeout(chk, 100);
			cc = 1;
			$(this).parent().addClass('active');
		});
		$('.menu_area ul li a').blur(function(){
			setTimeout(chk, 100);
			cc = 0;
			$('#menu_area ul li').removeClass('active');
		});
		});
		$(function(){
		$(".menu_area > ul > li").mouseenter(function(){
			$(this).find(" > a").addClass("active");
		});
		$(".menu_area > ul > li").mouseleave(function(){
			$(this).find(" > a").removeClass("active");
		});
		});