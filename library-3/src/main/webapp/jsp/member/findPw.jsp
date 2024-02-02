<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<link href="book.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/userHeader2" />
	<script src="auth.js"></script>
	<div id="cont_head">
		<h2>비밀번호 찾기</h2>
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
	<div align="center">
	
	<table>
	<tr><td>
		<font color="red" >${msg }</font>
	</td></tr>
	<tr><td align="center">
	<div class="card-write" align="center">
	<form action="findPwResult" method="post" id="f">
		<table class="table_bwrite">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"><br></td>
			</tr>
			<tr style="height: 60px;">
				<th>전화번호</th>
				<td><input type="text" name="tel" id="tel">
				<input type="hidden" id="phoneAutChk" />
				<input class="signin_pass" type="button" value="인증번호 받기" id="idTelCheck"><br> <!-- phoneChk 클릭시 함수 발동 --></td>
			</tr>
			<tr>
				<th>인증번호</th>
				<td><input class="signin_pass" id="phone2" type="text" name="phone2" title="인증번호 입력">
					<input class="signin_pass" type="button" value="인증번호 확인" id="findPw"><br> <!-- phoneChk 클릭시 함수 발동 -->
					<input type="hidden" id="phoneDoubleChk" />
				</td>
			</tr>
		</table>
		
		<div class="btn" style="margin-top: 20px;">
			<input type="button" value="확인" id="check2">
			<input type="button" value="취소" onclick="location.href='index'">
		</div>
		
	</form>
	</div>
	</td></tr>
			</table>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>