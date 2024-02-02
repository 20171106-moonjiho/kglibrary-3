<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 예약 조회</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/userHeader" />
	<div id="cont_head">
		<h2>내 예약 조회</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>마이페이지</li>
				<li class="now">내 예약 조회</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<table>
				<tr>
					<td>회의실
					<td>예약일
					<td>예약시간
					<td>취소
				</tr>
				<c:forEach var="reservation" items="${reservations }">
					<tr>
						<td>${reservation.room_num }
						<td>${reservation.reservation_date }
						<td>${reservation.reservation_time }:00~
							${reservation.reservation_time+reservation.duration }:00
						<td><button type="button"
								onclick="location.href='cancel?reservation_date=${reservation.reservation_date}&room_num=${reservation.room_num }'">
								취소</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>