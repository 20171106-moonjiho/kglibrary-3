<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개별도서등록</title>
</head>
<link href="book.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/bookheader" />
	<!--컨텐츠 영역-->
	<div id="cont_head">
		<h2>개별도서등록</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서자료검색</li>
				<li class="now">개별도서등록</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
			<h1>도서 등록</h1>
			<form action="bookRegistProc" method="post"
				enctype="multipart/form-data" id="f">
				<table>
					<tr align="center">
						<td colspan="2"><font color="red">${msg}</font></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<div class="card-write" align="center">
								<select class="selectBox" name="hitbook" id="hitbook">
									<option value="no" selected="selected">추천 없음</option>
									<option value="yes">추천</option>
								</select> 
								<select class="selectBox" name="category" id="category">
									<option value="소설" selected="selected">소설</option>
									<option value="만화">만화</option>
									<option value="시,에세이">시,에세이</option>
									<option value="인문학">인문학</option>
									<option value="자기계발">자기계발</option>
									<option value="과학">과학</option>
									<option value="요리">요리</option>
									<option value="컴퓨터IT">컴퓨터IT</option>
									<option value="역사,문화">역사,문화</option>
									<option value="기타">기타</option>
								</select> <input type="text" name="title_info" placeholder="제목"
									id="title_info"><br>
								<br> <input type="text" name="author_info"
									placeholder="저작자" id="author_info"> <input type="text"
									name="pub_info" placeholder="발행자" id="pub_info"><br>
								<br> <input type="text" name="pub_year_info"
									id="pub_year_info" placeholder="발행연도"> <input
									type="text" name="book_count" id="book_count"
									placeholder="책 갯수"><br>
								<br> <input type="text" name=donation id="donation"
									placeholder="기증자"><br>
							</div>
						</td>
					</tr>
					<tr align="center">
						<th colspan="2">상세 정보</th>
					</tr>
					<tr align="center">
						<td colspan="2"><textarea
								style="width: 100%; margin-left: 10px; resize: none;" rows="10"
								cols="30" name="detail_link"></textarea></td>
					</tr>
					<tr align="center">
						<th colspan="2">파일첨부</th>
					</tr>
					<tr>
						<td><input type="file" name="upfile"></td>
						<td><input type="button" class="submit_button" value="도서 등록"
							onclick="bookCheck()"> <input type="button"
							class="submit_button" value="취소" onclick="location.href='index'"><br>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<c:import url="/bookfooter" />
	<c:import url="/footer" />
</body>
</html>