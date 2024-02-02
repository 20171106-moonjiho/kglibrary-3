<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="notice.js"></script>
<div id="container">
	<!--사이드바 시작-->
	<div class="swsize">
		<div id="sidebar">
			<div class="stit">
				<p class="eng"></p>
				<h2>문화마당</h2>
			</div>
			<div id="sidemenu">
				<p class="tit jsMMenuText">
					<a href="#" class="jsMMenuBtn">문화행사 </a>
				</p>
				<ul id="jsMMenu">
					<li id="cultureboard"><a href="cultureboard">문화행사 </a></li>
				</ul>
				<script>
					document.getElementById('${menu}').setAttribute('class','on');
				</script>
			</div>
			<div id="jsFacetLeft"></div>
		</div>
	</div>
	<!--사이드바 끝-->
	<!--컨텐츠 영역-->
	<div id="contents">
		<div id="print_wrap">