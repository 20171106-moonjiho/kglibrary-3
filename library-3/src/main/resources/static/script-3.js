// JavaScript Document
jQuery(document).ready(function(){
//	$('.navi>li').mouseover(function(){
//		$(this).find('.submenu').css("display","block");
//	}).mouseout(function(){
//		$(this).find('.submenu').css("display","none");
//	});	
	
 var tabBtn=$(".tab-btn>ul>li");
 var tabCont=$(".tab-cont>div");

 tabCont.hide().eq(0).show();

 tabBtn.mouseover(function(e){
  e.preventDefault();
  var target=$(this);
  var index=target.index();
  tabBtn.removeClass("on");
  target.addClass("on");
  tabCont.css("display","none");
  tabCont.eq(index).css("display","block");
 });
});