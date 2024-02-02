<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="container">
	<!--사이드바 시작-->
	<div class="swsize">
		<div id="sidebar">
			<div class="stit">
				<p class="eng"></p>
				<h2>마이페이지</h2>
			</div>
			<div id="sidemenu">
				<p class="tit jsMMenuText">
					<a href="#" class="jsMMenuBtn">공지사항 </a>
				</p>
				<ul id="jsMMenu">
					<li id="userInfo"><a href="userInfo">내 정보 보기</a></li>
					<li id="update"><a href="update">회원 수정</a></li>
					<li id="myReservation"><a href="myReservation">내 예약 조회</a></li>
					<li id="preReservation"><a href="preReservation">지난 예약</a></li>
					<li id="myBook"><a href="myBook">대출 목록</a></li>
					<li id="delete"><a href="delete">회원 탈퇴</a></li>
				</ul>
				<script>
					document.getElementById('${menu}').setAttribute('class',
							'on');
				</script>
			</div>
			<div id="jsFacetLeft"></div>
		</div>
	</div>
	<!--사이드바 끝-->

	<div id="contents">
		<div id="print_wrap">