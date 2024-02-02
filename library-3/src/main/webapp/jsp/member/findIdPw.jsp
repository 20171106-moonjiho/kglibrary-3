<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
</head>
<link href="book.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/userHeader2" />
	<script src="member.js"></script>
	<link href="member.css" rel="stylesheet">
	<div id="cont_head">
		<h2>아이디/비밀번호 찾기</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>사이트이용</li>
				<li class="now">아이디/비밀번호 찾기</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">


		<div class="memberbox idpw">
			<font color="red">${msg }</font></td>
			<!-- -->
			<div class="box">
				<p class="tit icon01">
					<strong>아이디</strong>찾기
				</p>
				<div class="con">
					<ul class="list">
						<li>도서관 아이디가 기억나지 않으실 경우, <br>인증으로 등록된 아이디를 찾을 수 있습니다</li>
					</ul>
				</div>
				<p class="btn">
					<a href="findId" class="con_btn">아이디 찾기</a>
				</p>
			</div>
			<!-- -->
			<div class="box">
				<p class="tit icon02">
					<strong>비밀번호</strong>찾기
				</p>
				<div class="con">
					<ul class="list">
						<li>비밀번호가 기억나지 않으실 경우, 아이디와 <br>인증으로 비밀번호를 확인하실 수 있습니다.</li>
					</ul>
				</div>
				<p class="btn">
					<a href="findPw" class="con_btn">비밀번호 찾기</a>
				</p>
			</div>
			<!-- -->
		</div>

	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>