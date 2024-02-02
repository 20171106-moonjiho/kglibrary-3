<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<c:import url="/header" />
	<c:import url="/cultureheader" />
	<link href="culture.css" rel="stylesheet">
	<script>
	function deleteOk() {
		result = confirm('진짜로 삭제하겠습니까?');
		if (result == true) {
			var no = document.getElementById("no").value
			location.href = 'registDelete?no=' + no
		}
	}
	</script>
	<div id="cont_head">
		<h2>공지사항</h2>
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
			<div class="search_tit">
				<h3 class="tit">문화행사 목록</h3>
			</div>
			<c:choose>
				<c:when test="${empty board }">
					<h1>등록된 신청내역이 없습니다</h1>
				</c:when>
				<c:otherwise>
					<div class="table_blist">
						<table cellspacing="0" summary="의 번호, 제목, 글쓴이, 등록일, 조회수를 확인">
							<caption></caption>
							<colgroup>
								<!-- <col width="10%" /> -->
								<col width="15%">
								<col width="*">
								<col width="15%">
								<col width="15%">
							</colgroup>
							<thead>
								<tr>
									<!-- <th scope="col">번호</th> -->
									<th scope="col">이름</th>
									<th scope="col">제목</th>
									<th scope="col">상태</th>
									<th scope="col" class="th_none">취소</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<!-- <td class="eng">1</td> -->
									<td>${board.name }</td>
									<td class="eng">${board.title }</td>
									<td>신청완료</td>
									<input type="hidden" id="no" value="${no }">
									<td><input type="button" value="취소하기" class="con_sbtn"
										onclick="deleteOk();"></td>
								</tr>
							</tbody>
						</table>

					</div>

					<!-- 버튼 -->
					<div class="btn_w">
						<span><a href="cultureboard" class="con_btn">돌아가기</a></span>
					</div>
					<!-- //버튼 -->

				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!--컨테이너끝 -->
	<c:import url="/culturefooter" />
	<c:import url="/footer" />
</body>
</html>