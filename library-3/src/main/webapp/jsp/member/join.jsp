<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/userHeader2" />
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="join.js"></script>
	<script src="member.js"></script>
	<div id="cont_head">
		<h2>회원가입</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>사이트이용</li>
				<li class="now">회원가입</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<font color="red">${msg }</font>
			<form action="joinProc" method="post" id="f">
				<table class="table_bwrite">
					<tr>
						<th>아이디</th>
						<td><input type="text" id="id" name="id"><br></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="pw" id="pw"><br></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="confirm" id="confirm"
							onchange="pwCheck()"><br></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" id="name"><br></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="email" id="email"><br></td>
					</tr>
					<tr>
						<th>우편번호</th>
						<td><input type="text" name="postcode" id="sample6_postcode">
							<input type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기"><br></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address" id="sample6_address"><br></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type="text" name="detailAddress"
							id="sample6_detailAddress"><br></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="tel" id="tel"> <input
							type="hidden" id="phoneAutChk" /> <input class="signin_pass"
							type="button" value="입력" id="phoneChk"><br> <!-- phoneChk 클릭시 함수 발동 --></td>
					</tr>
					<tr>
						<th>인증번호</th>
						<td><input class="signin_pass" id="phone2" type="text"
							name="phone2" title="인증번호 입력"> <input class="signin_pass"
							type="button" value="인증확인" id="phoneChk2"><br> <!-- phoneChk 클릭시 함수 발동 -->
							<input type="hidden" id="phoneDoubleChk" /></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><input type="button"
							value="회원가입" onclick="allCheck()"> <input type="button"
							value="취소" onclick="location.href='index'"><br></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>