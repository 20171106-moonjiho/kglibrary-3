<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 기증 신청</title>
</head>
<style>
.don_W {	
	border: 1px solid #444444 !important;	
	padding-bottom: 10px !important;
}

.don_Aox{
	padding-bottom: 10px;
	padding-right: 10px;
	
}

.don_Box {
	padding-bottom: 10px;
	
}

.textarea {
	border: 2px solid #ccc;
  	border-radius: 4px;
}


</style>

<body>
	<c:import url="/header" />
	<c:import url="/donateheader" />
	<div id="contents">
		<div id="print_wrap">
			<div id="cont_head">
				<h2>기증 신청</h2>
				<!-- 현재위치 -->
				<div id="location">
					<ul>
						<li>홈</li>
						<li>도서 기증</li>
						<li class="now">기증 신청</li>
					</ul>
				</div>
			</div>
		</div>
		<br>
		<div class="don_W" align="center">
			<form action="donateWriteProc" method='post'
				enctype="multipart/form-data">
				<table >
					<caption></caption>
					<th class="don_Aox" >기증자</th>
					<td class="don_Box" width="90%"><input style="width: 90%;" type="text" name="id"
						value="${sessionScope.id }"></td>
					<br>
					<tr>
						<th class="don_Aox">기증 분야</th>
						<td class="don_Box"><input style="width: 90%;" type="text" name="subject"
							placeholder="예시)일반도서, 아동·청소년도서" /></td>
					</tr>
					<tr>
						<th class="don_Aox">도서 수량</th>
						<td class="don_Box"><input style="width: 90%;" type="number" name="book_no" />
						</td>
					</tr>
					<tr>
						<th class="don_Aox">기증 방법</th>
						<td class="don_Box"><input type="radio" name="method" value="직접방문" checked />직접방문
							<input type="radio" name="method" value="우편배달" />우편발송</td>
					</tr>
					<tr>
						<th class="don_Aox">내용</th>
						<td class="don_Box"><textarea style="width: 90%; resize: none" rows="10"
								cols="40" name="content" value="${donate.content}"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input class="Don_Wbtn" type="submit" value="등록">
						<input class="Don_Wbtn" type="button" value="취소" onclick="location.href='donateForm'">
					</tr>
				</table>
		</div>
	</div>

	<c:import url="/donatefooter" />
	<c:import url="/footer" />
</body>
</html>