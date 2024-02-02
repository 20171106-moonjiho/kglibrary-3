<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.Arrays" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/userHeader" />
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="member.js"></script>
	<script src="join.js"></script>
	<div id="cont_head">
		<h2>회원 수정</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>마이페이지</li>
				<li class="now">회원 수정</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<font color="red">${msg }</font>
			<form action="updateProc" method="post" id="f">
				<table class="table_bwrite">
					<tr>
						<th>아이디</th>
						<td><input type="hidden" value="${sessionScope.id }" id="id">${sessionScope.id }<br></td>
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
						<td><input type="hidden" name="name" id="name"
							value="${sessionScope.name }">${sessionScope.name }<br></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="email" id="email"
							value="${sessionScope.email }"><br></td>
					</tr>
					<c:set var="address" value="${sessionScope.address}" />
					<c:set var="addressArray" value="${fn:split(address, ',')}" />
					<tr>
						<th>우편번호</th>
						<td><input type="text" name="postcode" id="sample6_postcode"
							value="${addressArray[0] }"> <input type="button"
							onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address" id="sample6_address"
							value="${addressArray[1] }"><br></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type="text" name="detailAddress"
							id="sample6_detailAddress" value="${addressArray[2] }"><br></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="tel" id="tel"
							value="${sessionScope.tel }"><br></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><input type="button"
							value="회원수정" onclick="updateCheck()" class="cbtn cbtn_g2"> <input
							type="button" value="취소" onclick="location.href='index'" class="cbtn cbtn_g2"><br></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>