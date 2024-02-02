<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>API도서등록</title>
</head>
<link href="book2.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/bookheader" />
	<div id="cont_head">
		<h2>API도서등록</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서자료검색</li>
				<li class="now">API도서등록</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<div
				style="width: 800px; margin: 0 auto; margin-top: 100px; margin-bottom: 100px">
				<h2>도서 등록</h2>
				<hr class="hr1" noshade>
				<form action="apiRegistProc" method="post" id="f">
					<span> 10종류씩 도서가 등록 가능합니다.<br> (수량 정정이 필요할 시 관리자를
						호출해주세요)<br> 등록할 페이지 번호를 입력해 주세요. ${apimessage}<br>
					<br>
					</span> <span class="center"> <select class="selectBox"
						name="select">
							<option value="title" selected="selected">제목</option>
					</select> <c:choose>
							<c:when test="${empty search or search == 'null'}">
								<input type="text" name="search" id="search" />
							</c:when>
						</c:choose> <input type="text" name="pageNum" placeholder="등록할 페이지 번호"
						id="pageNum"> <input type="button" value="도서 등록"
						onclick="apiCheck()">
					</span>
				</form>
			</div>
		</div>
	</div>
	<c:import url="/bookfooter" />
	<c:import url="/footer" />
</body>
</html>