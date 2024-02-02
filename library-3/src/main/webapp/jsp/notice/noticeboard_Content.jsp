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
	<c:import url="/noticeheader" />
	<div id="cont_head">
		<h2>공지사항</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>이용자마당</li>
				<li class="now">공지사항</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<div class="table_bview">
				<table cellspacing="0" summary="공지사항 의 작성일, 작성자, 조회수 및 내용">

					<thead>
						<tr>
							<th scope="col"><span class="category_color"></span>${board.title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<dl class="info">
									<dt>작성일</dt>
									<dd>${board.writeDate }</dd>
								</dl>
								<dl class="info">
									<dt>작성자</dt>
									<dd>${board.id }</dd>
								</dl>
							</td>
						</tr>
						<tr>
							<td class="content"><c:if test="${board.image != null}">
									<img src="../img/${board.id}/${board.image}">
									<br>
								</c:if> ${board.content }</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="board_button">
				<input type="hidden" id="board_no" value="${board.no }">
				<div class="fr">
					<span class="bt"><input type="button" value="목록"
						onclick="location.href='noticeBoard'" class="cbtn cbtn_g"></span>
					<c:if test="${sessionScope.id eq board.id}">
						<span class="bt"><input type="button" value="수정"
							onclick="location.href='noticeboard_Modify?no=${board.no }'"
							class="cbtn cbtn_g"></span>
						<span class="bt"><input type="button" value="삭제"
							onclick="deleteCheck()" class="cbtn cbtn_g"></span>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/noticefooter" />
	<c:import url="/footer" />
</body>
</html>
