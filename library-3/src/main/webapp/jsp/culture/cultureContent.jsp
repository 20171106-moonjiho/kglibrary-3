<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화행사</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/cultureheader" />
	<link href="culture.css" rel="stylesheet">
	<script src="culture.js"></script>
	
	<div id="cont_head">
		<h2>문화행사</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>문화마당</li>
				<li class="now">문화행사</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<div id="board" style="width: 100%;">
			<div class="table_bview">
				<table cellspacing="0" summary="의 작성일, 작성자, 조회수 및 내용">
					<caption></caption>
					<colgroup>
						<col width="">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="th_none">${board.title }
							<a href="#javascript:;" class="btn_sm btn_close">기간종료</a>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<dl class="info">
									<dt>강좌기간</dt>
									<dd class="eng">${board.class_period_start } ~ ${board.class_period_end }</dd>
								</dl>
							</td>
						</tr>
						<tr>
							<td>
								<dl class="info">
									<dt>신청기간</dt>
									<dd class="eng">${board.reservation_period_start } ~ ${board.reservation_period_end }</dd>
								</dl>
							</td>
						</tr>

						<tr>
							<td>
								<dl class="info">
									<dt>수강대상</dt>
									<dd>${board.target }</dd>
								</dl>
							</td>
						</tr>

						<tr>
							<td>
								<dl class="info">
									<dt>행사장소</dt>
									<dd>${board.event_area }</dd>
								</dl>
							</td>
						</tr>

						<tr>
							<td>
								<dl class="info">
									<dt>모집인원</dt>
									<dd class="eng">
										<strong><span
											style="color: #FF0000; font-weight: bold;">${board.applicants }</span></strong> /
										${board.people } (선착순)

									</dd>
								</dl>
							</td>
						</tr>

						<tr>
							<td>
								<dl class="info">
									<dt>모집유형</dt>
									<dd>방문신청 , 전화신청 , 인터넷신청</dd>
								</dl>
							</td>
						</tr>


						<tr>
							<td>
								<dl class="info">
									<dt>접수장소</dt>
									<dd>${board.reception_area }</dd>
								</dl>
							</td>
						</tr>



						<tr>
							<td>
								<dl class="info">
									<dt>참가비</dt>
									<dd class="eng">${board.money }</dd>
								</dl>
							</td>
						</tr>



						<tr>
							<td>
								<dl class="info">
									<dt>강사</dt>
									<dd>${board.teacher }</dd>
								</dl>
							</td>
						</tr>


						<tr>
							<td class="content">
								<c:if test="${board.image != null}">
									<img src="../img/${board.id}/${board.image}">
									<br>
								</c:if>
								${board.contents }
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="board_button">
				<input type="hidden" id="board_no" value="${board.no }">
				<div class="fr">
					<span class="bt"><input type="button" value="목록"
						onclick="location.href='cultureboard'" class="cbtn cbtn_g"></span>
					<c:if test="${sessionScope.id eq board.id}">
						<span class="bt"><input type="button" value="수정"
							onclick="location.href='cultureModify?no=${board.no }'"
							class="cbtn cbtn_g"></span>
						<span class="bt"><input type="button" value="삭제"
							onclick="cultureDeleteCheck()" class="cbtn cbtn_g"></span>
					</c:if>
				</div>
			</div>
			</div>

		</div>
	</div>
	<!--컨테이너끝 -->
	<c:import url="/culturefooter" />
	<c:import url="/footer" />
</body>
</html>