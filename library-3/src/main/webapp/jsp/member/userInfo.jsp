<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/userHeader" />
	<div id="cont_head">
		<h2>내 정보</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>마이페이지</li>
				<li class="now">내 정보</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<table>
				<tr>
					<th>아이디</th>
					<td width="500">${sessionScope.id }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td width="500">${sessionScope.name }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td width="500">${sessionScope.email }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td width="500">${sessionScope.address }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td width="500">${sessionScope.tel }</td>
				</tr>
			</table>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>