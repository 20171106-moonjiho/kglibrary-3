<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/userHeader" />
	<div id="cont_head">
		<h2>회원 탈퇴</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>마이페이지</li>
				<li class="now">회원 탈퇴</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<form action="deleteProc" method="post">
				<table>
					<tr>
						<td colspan="2">${msg }</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="pw"><br></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="confirm"><br></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="회원 탈퇴" class="cbtn cbtn_g2"> <input
							type="button" value="취소" onclick="location.href='index'" class="cbtn cbtn_g2">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>