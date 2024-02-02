<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대출 목록</title>
</head>
<link href="book2.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/userHeader" />
	<script src="myBook.js"></script>
	<script>
		
	</script>

	<div id="cont_head">
		<h2>대출 목록</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>마이페이지</li>
				<li class="now">대출 목록</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>
	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
		<!-- 
		<h2>도서 검색</h2>

		<hr class="hr1" noshade>
		 -->
		<c:choose>
			<c:when test="${empty boards }">
				<h2>대출 도서가 없습니다.</h2>
			</c:when>
			<c:otherwise>
				<table style="margin-top: 30px;">
					<tr>
						<th width="100">번호</th>
						<th width="350">제목</th>
						<th width="130">작성자</th>
						<th width="250" colspan="3">반납일</th>
					</tr>

					<c:forEach var="board" items="${ boards}">
						<tr>
							<td class="center">${board.no }</td>
							<td class="left"
								onclick="location.href='bookContent?no=${board.no }'">
								${board.title_info }</td>
							<td class="center">${board.author_info }</td>
							<td class="center">${board.rentaldate }</td>
							<td width="45px">
								<button type="button"
									onclick="extendCheck('${sessionScope.id }','${board.no}', '${board.rentaldate}', '${board.borrowdate}')">연장</button>
							</td>
							<td width="45px">
								<button type="button"
									onclick="returnCheck('${sessionScope.id }','${board.no}')">반납</button>
							</td>
						</tr>
					</c:forEach>
				</table>
				<div class="center" style="margin-top: 18px;">${result}</div>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	<c:import url="/userFooter" />
	<c:import url="/footer" />
</body>
</html>