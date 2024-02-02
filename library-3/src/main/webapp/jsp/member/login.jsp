<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<link href="book.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/userHeader2" />
	<script src="member.js"></script>
	<div id="cont_head">
		<h2>로그인</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>사이트이용</li>
				<li class="now">로그인</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
<div id="cont_wrap">
	<div align="center">
	<h1>회원로그인</h1><br>
	<table>
	<tr><td>
		<font color="red" >${msg }</font>
	</td></tr>
	<tr><td align="center">
	<div class="card-write" align="center">
	<form action="loginProc" method="post" id="f">
		<input type="text" name="id" placeholder="아이디" id="id" style="width: 300px; margin-bottom: 10px;"><br>
		<input type="password" name="pw" placeholder="비밀번호" id="pw" style="width: 300px; margin-bottom: 2px;"><br>
		<a href="findIdPw" style="margin-bottom: 10px; margin-left: 200px; font-size: 13px;">아이디/비밀번호 찾기</a><br>
		<input type="button" value="로그인" onclick="loginCheck()">
		<input type="button" value="취소" onclick="location.href='index'" style="margin-bottom: 10px;">	
	</form>
	</div>
	</td></tr>
				<!-- 
		카카오 이미지 링크
		https://developers.kakao.com/tool/demo/login/login?method=dynamic
	 -->
	<tr><td align="center">
		<a href="https://kauth.kakao.com/oauth/authorize?response_type=code
		&client_id=d3a13977a0273b816e425220da2d6622
		&redirect_uri=http://localhost/kakaoLogin">
							<img
							src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" />
					</a></td>
				</tr>
			</table>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>