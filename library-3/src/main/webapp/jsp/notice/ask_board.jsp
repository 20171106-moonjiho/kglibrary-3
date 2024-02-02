<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>묻고 답하기</title>
</head>
<body>
<c:import url="/header" />
<c:import url="/noticeheader"/>
			
					<div id="cont_head">
							<h2>묻고 답하기</h2>
							<!-- 현재위치 -->
							<div id="location">
								<ul>
									<li>홈</li>
									<li>이용자마당</li>
									<li class="now">묻고 답하기</li>
								</ul>
							</div>
							<!-- //현재위치 -->
						</div>
					
			<div id="cont_wrap">
				<div id="board" style="width:100%;">
						
					<c:choose>
						<c:when test="${empty boards }">
							<h1>등록된 데이터가 존재하지 않습니다.</h1>
							<div class="board_button">
								<div class="fr">
									<span class="bt">
										<input type="button" value="글쓰기" onclick="location.href='ask_board_write'"
										class="cbtn cbtn_g"></span>
								</div>
							</div>
						</c:when>
					<c:otherwise>
						<div class="board_total">
							<div class="board_total_left">
								<img src="../img/total_ic.gif" alt=""> 
								전체 <strong>${count }</strong>개의 게시물이 있습니다.
							</div>
						</div>		
						<table>
							<tr>
								<th width="100">번호</th>
								<th width="500">제목</th>
								<th width="130">작성자</th>
								<th width="200">일시</th>
								<th width="70">조회수</th>
							</tr>
							<c:forEach var="board" items="${boards }">
								<tr>
									<td class="notice"><a href="ask_board_Content?no=${board.no }">${board.no }</a></td>
									<td class="notice title">
									<c:if test="${board.getDepth() > 0}">
										<img src="../img/level.gif" width="${5 * board.getDepth()}">
										<img src="../img/re.gif">
									</c:if>
									<c:if test="${board.getDepth() == 0}">
										<img src="../img/level.gif" width="0">
									</c:if>
									<a href="ask_board_Content?no=${board.no }">
									${board.title }</a>
									</td>
									<td class="notice">${board.id }</td>
										<td class="notice">${board.writeDate }</td>
										<td class="notice">${board.hits }</td>
								</tr>
									
							</c:forEach>
						</table>
						
						<div class="board_button">
							<div class="fr">
							<span class="bt"><input type="button" value="글쓰기" onclick="location.href='ask_board_write'"
							class="cbtn cbtn_g"></span>
							</div>
						</div>

						<div class="board_paginate">
							${result}
						</div>
							
						<form action="ask_board">
							<select class="selectBox" name="search_select">
								<c:choose>
									<c:when test="${search_select == '제목' }">
										<option value="">전체</option>
										<option value="제목" selected="selected" >제목</option>
										<option value="글쓴이">글쓴이</option>
									</c:when>
									<c:when test="${search_select == '글쓴이' }">
										<option value="">전체</option>
										<option value="제목">제목</option>
										<option value="글쓴이" selected="selected" >글쓴이</option>
									</c:when>
									<c:otherwise>
										<option value="" selected="selected">전체</option>
										<option value="제목">제목</option>
										<option value="글쓴이">글쓴이</option>
									</c:otherwise>
								</c:choose>
										
							</select>
											
							<c:choose>
								<c:when test="${empty search or search == 'null'}">
									<input type="text" name="search" >
								</c:when>
								<c:otherwise>
									<input type="text" name="search" >
								</c:otherwise>
							</c:choose>
							<input type="image" src="../img/search_bt.gif" id="search_bt"
							name="search_bt" class="search_bt" alt="검색">
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
<c:import url="/noticefooter"/>
<c:import url="/footer" />
</body>
</html>