<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="book.js"></script>
<div id="container">
	<!--사이드바 시작-->
	<div class="swsize">
		<div id="sidebar">
			<div class="stit">
				<p class="eng"></p>
				<h2>이용자마당</h2>
			</div>
			<div id="sidemenu">
				<p class="tit jsMMenuText">
					<a href="#" class="jsMMenuBtn">도서 자료 검색 </a>
				</p>
				<ul id="jsMMenu">
					<li id="board"><a href="bookForm">도서 검색 </a></li>
					<li id="board2"><a href="bookHopeForm">비치 희망 도서 </a></li>

					<c:choose>
						<c:when test="${sessionScope.id eq 'admin'}">
							<li id="board3"><a href="apiBookRegist">API 도서 등록 </a></li>
						</c:when>
					</c:choose>

				</ul>
				<script>
					document.getElementById('${menu}').setAttribute('class',
							'on');
				</script>
			</div>
			<div id="jsFacetLeft"></div>
		</div>
	</div>
	<!--사이드바 끝-->
	<div id="contents">
		<div id="print_wrap">