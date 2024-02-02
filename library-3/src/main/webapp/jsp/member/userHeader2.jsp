<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="container">
	<!--사이드바 시작-->
	<div class="swsize">
		<div id="sidebar">
			<div class="stit">
				<p class="eng"></p>
				<h2>사이트이용</h2>
			</div>
			<div id="sidemenu">
				<p class="tit jsMMenuText">
					<a href="#" class="jsMMenuBtn">공지사항 </a>
				</p>
				<ul id="jsMMenu">
					<li id="login"><a href="login">로그인</a></li>
					<li id="regist"><a href="terms">회원가입</a></li>
					<li id="findIdPw"><a href="findIdPw">아이디/비밀번호 찾기</a></li>
				</ul>
				<script>
					document.getElementById('${menu}').setAttribute('class', 'on');
				</script>
			</div>
			<div id="jsFacetLeft"></div>
		</div>
	</div>
	<!--사이드바 끝-->

	<div id="contents">
		<div id="print_wrap">