<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>비치희망도서</title>
</head>
<link href="book2.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/bookheader" />
	<div id="cont_head">
		<h2>비치희망도서</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서자료검색</li>
				<li class="now">비치희망도서</li>
			</ul>
		</div>

		<!-- //현재위치 -->
	</div>


	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
					<div class="board_total">
						<div class="board_total_left">
							<img src="../img/total_ic.gif" alt=""> 전체 <strong>${count }</strong>개의
							게시물이 있습니다.
						</div>
					</div>

			<c:choose>
				<c:when test="${empty boards }">
					<h1>등록된 데이터가 존재하지 않습니다.</h1>
				</c:when>
				<c:otherwise>
					<table style="padding-top: 30px;">
						<tr>
							<th width="70">번호</th>
							<th width="500">제목</th>
							<th width="300">작성자</th>
							<th width="200">작성일</th>
						</tr>

						<c:forEach var="board" items="${ boards}">
							<tr>
								<td class="center">${board.no }</td>
								<td class="left"
									onclick="location.href='bookHopeContent?no=${board.no }'">
									${board.board_title }</td>
								<td class="center">${board.hope_user }</td>
								<td class="center">${board.hopedate }</td>
							</tr>
						</c:forEach>
					</table>
					
					<div class="board_button">
							<div class="fr">
								<span class="bt"><input type="button" value="비치 희망 도서 신청"
									onclick="location.href='bookHopeRegist'"
									class="cbtn cbtn_g2"></span>
							</div>
						</div>
						
					<div class="center" style="margin-top: 18px;">${result}</div>
					
					<div class="board_search">
							<form id="frm_sch" action="bookHopeForm">
								<fieldset>
									<ul>
										<li><select id="v_search" name="select"
											title="검색형태 선택" style="width: 70px;">
												<option value="board_title" selected="selected">제목</option>
												<option value="hope_user">신청자</option>
										</select></li>
										<li><c:choose>
												<c:when test="${empty search or search == 'null'}">
													<input type="text" size="25" title="검색어를 입력하세요"
														id="p_keyword" name="search" class="search_input" value="">
												</c:when>
												<c:otherwise>
													<input type="text" size="25" title="검색어를 입력하세요"
														id="p_keyword" name="search" class="search_input" value="">
												</c:otherwise>
											</c:choose></li>
										<li><input type="image" src="../img/search_bt.gif"
											id="search_bt" name="search_bt" class="search_bt" alt="검색"></li>
									</ul>
								</fieldset>
							</form>
						</div>
				</c:otherwise>
			</c:choose>
			
		</div>
	</div>
	<c:import url="/bookfooter" />
	<c:import url="/footer" />
</body>
</html>