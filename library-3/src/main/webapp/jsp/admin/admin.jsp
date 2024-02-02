<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/adminHeader" />
	<div id="cont_head">
		<h2>회원 관리</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>관리자페이지</li>
				<li class="now">회원 관리</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">

		<div id="board" style="width: 100%;">
			<table>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="member" items="${members}">
					<tr>
						<td>${member.id }</td>
						<td>${member.name }</td>
						<td>${member.tel }</td>
						<td><button type="button"
								onclick="location.href='adminDelete?id=${member.id }'">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
			<div class="board_paginate">${result}</div>
			<div style="margin: 0 auto; text-align: center;">
				<div class="board_search">
					<form id="frm_sch">
						<fieldset>
							<ul>
								<li><select id="v_search" name="select" title="검색형태 선택"
									style="width: 70px;">
										<option value="id" selected="selected">아이디</option>
										<option value="tel">전화번호</option>
								</select></li>
								<li><input type="text" size="25" title="검색어를 입력하세요"
									id="p_keyword" name="search" class="search_input" value="">
								</li>
								<li><input type="image" src="../img/search_bt.gif"
									id="search_bt" name="search_bt" class="search_bt" alt="검색"></li>
							</ul>
						</fieldset>
					</form>
					`
				</div>
			</div>

		</div>
	</div>
	<c:import url="/adminFooter" />
	<c:import url="/footer" />
</body>
</html>