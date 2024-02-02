<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비치희망도서신청</title>
</head>
<link href="book.css" rel="stylesheet">
<body>
	<c:import url="/header" />
	<c:import url="/bookheader" />
	<div id="cont_head">
		<h2>비치희망도서신청</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서자료검색</li>
				<li class="now">비치희망도서신청</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
		<h1>비치 희망 도서 신청 등록</h1>
		<form action="bookHopeRegistProc" method="post" id="f">
			<table>
				<tr>
					<td><font color="red">${msg}</font></td>
				</tr>
				<tr>
					<td>
						<div class="card-write">
							<div class="title-w">
								<input type="text" name="board_title" placeholder="제목"
									id="board_title">
							</div>
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
							</select> <input type="text" name="title_info" placeholder="도서제목"
								id="title_info"><br>
							<br> <input type="text" name="author_info" placeholder="저작자"
								id="author_info"> <input type="text" name="pub_info"
								placeholder="발행자" id="pub_info"> <input type="text"
								name="pub_year_info" id="pub_year_info" placeholder="발행연도">
						</div>
					</td>
				</tr>
				<tr>
					<th><span class="subject_title">신청 이유</span></th>
				</tr>
				<tr>
					<td><textarea
							style="width: 100%; margin-left: 10px; resize: none;" rows="10"
							cols="100" name="reason"></textarea></td>
				</tr>
				<tr>
					<td><input type="button" class="submit_button" value="신청 등록"
						onclick="bookHopeCheck()"> <input type="button"
						class="submit_button" value="취소"
						onclick="location.href='bookHopeForm'"><br></td>
				</tr>
			</table>
		</form>
	</div>
	<c:import url="/bookfooter" />
	<c:import url="/footer" />
</body>
</html>