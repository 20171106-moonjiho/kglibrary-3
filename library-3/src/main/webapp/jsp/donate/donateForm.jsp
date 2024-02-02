<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 기증</title>
<style>
.search_Box {
	position: relative;
	margin: 10px;
}

.search_Box input {
	width: 20%;
	border: 1px solid #bbb;
	padding: 10px 12px;
	font-size: 14px;
}

.search_Box button {
	width: 50px;
	height: 38px;
	border: 0px;
	font-weight: bold;
	background: #08ae90;
	outline: none;
	float: right;
	color: #ffffff;
}

table.donate_board {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid #6e6e6e;
	margin: 10px 10px;
}

table.donate_board th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #6e6e6e;
	background: #6e6e6e;
	color: #F5F5F5;
}

table.donate_board td {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
</head>

<body>
	<c:import url="/header" />
	<c:import url="/donateheader" />

	<div id="contents">
		<div id="print_wrap">
			<div id="cont_head">
				<h2>기증 목록</h2>
				<!-- 현재위치 -->
				<div id="location">
					<ul>
						<li>홈</li>
						<li>도서 기증</li>
						<li class="now">기증 목록</li>
					</ul>
				</div>
				<!-- //현재위치 -->
			</div>
			<!-- 			<div>
				<h1>도서 기증</h1>
			</div> -->
			<div align="right" class="search_Box">
				<form action="donateForm" method="post">
					<input type="text" name="search" placeholder="기증자를 입력하세요." maxlength="300">
					<button type="submit">검색</button>
				</form>
			</div>
			<div align="center">
				<table class="donate_board">
					<tr>
						<th width="150" scope="row">번호</th>
						<th width="700" scope="row">기증자</th>
						<th width="150" scope="row">날짜</th>
					</tr>
					<c:forEach var="board" items="${donate}">
						<tr>
							<td>${board.no }</td>
							<td onclick="location.href='donateContent?no=${board.no}'">${board.id }</td>
							<td>${board.reg_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="board_paginate">${result}</div>
		</div>
	</div>
	</div>
	<c:import url="/donatefooter" />
	<c:import url="/footer" />
</body>
</html>