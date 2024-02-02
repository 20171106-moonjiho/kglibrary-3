<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기증 안내</title>
<style>
.book_pic {
	width: 70%;
	object-fit: cover;
	margin: 3%;
	padding: 0px;
}

.Don_btn {
	right: 0;
	bottom: 0;
	padding: 50px;
	margin: 0px 0px -50px 0px;
}

.Don_btn a {
	padding: 10px;
	border-radius: 10px;
	background-color: #123;
	color: white;
	text-decoration: none;
}

</style>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/donateheader" />

	<div id="contents">
		<div id="print_wrap">
			<div id="cont_head">
				<h2>기증 안내</h2>
				<!-- 현재위치 -->
				<div id="location">
					<ul>
						<li>홈</li>
						<li>도서 기증</li>
						<li class="now">기증 안내</li>
					</ul>
				</div>
			</div>
		</div>

		<div>
			<img src="/img/book_donate.png" class="book_pic">
		</div>
		<div>
			<h2>
				기관, 단체, 개인으로부터 도서를 기증받아 도서관 자료로 활용하고 정보소외계층, 작은도서관, 지역아동센터 등에 지원함으로써
				서로 나누고 독서 활성화에 기여하고자 합니다.<br> 단, 기증받은 자료는 우리 도서관 내부 규정에 준하여
				선정ㆍ등록하며, 사후 처리 시 기증자료에 대한 권한을 도서관에 일임함을 원칙으로 하오니 기증 시 참고하여 주시기 바랍니다.
			</h2>
		</div>
		<div class="Don_btn" align="center">
			<a href="donateWrite">신청하기</a>
		</div>
	</div>
	<c:import url="/noticefooter" />
	<c:import url="/footer" />
</body>
</html>