<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/Introductionheader" />
	<div id="cont_head">
		<h2>공지사항</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서관 소개</li>
				<li class="now">자료 현황</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<h3 class="tit">일반도서</h3>
		
		<table class="table1">
	<colgroup>
		<col width="*">
		<col width="66%">
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">일반도서</th>
		</tr>
	</thead>
	<tbody>
	 	<c:forEach var="board" items="${dataStatus}" varStatus="loop">
		<tr>
			<th scope="row">${board.category }</th>
			<td>${board.bookCount }</td>
		</tr>
		<tr>
		<c:if test="${loop.last}">
        <tr>
            <th scope="row">전체통계</th>
            <td>${board.totalBookCount }</td>
        </tr>
    	</c:if>
		</c:forEach>
	</tbody>
</table>
	</div>
	<!--컨테이너끝 -->
	<c:import url="/Introductionfooter" />
	<c:import url="/footer" />
</body>
</html>