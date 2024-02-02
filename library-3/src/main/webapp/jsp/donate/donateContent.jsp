<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기증 내용</title>
</head>
<style>
body {
	padding-top: 3000px;
}

.Do_view {
	border-top: 1px solid #999;
	border-bottom: 1px solid #999;
	border-right: 1px solid #999;
	border-left: 1px solid #999;
	width: 700px;
	text-align: center;
	margin:auto;
	padding: 20px;	
}

.Do_view .Do_title {
	text_align: center;
	margin-top: 20px;
	margin-bottom: 20px;
}

.Do_view .Do_info {
	border-top: 3px solid #999;
	border-bottom: 1px solid #999;
	margin: auto;
	width: 700px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.Do_view .Do_info dl {
	display: inline-block;
}

.Do_view .Do_info dl dt, dd {
	display: inline-block;
	font-size: small;
}

.Do_view .Do_info dl dt {
	margin-left: 5px;
	color: #999;
}

.Do_view .Do_info dl dd {
	margin-right: 10px;
	margin-left: 5px;
}

.Do_main {
	
	width: 700px;
	margin-top: 30px;
	padding-bottom: 30px;
}

.Do_btn {

	right: 0;
	bottom: 0;
	padding: 50px;
	margin: 0px 0px -50px 0px;
}

.Do_btn a {
	padding: 10px;
	border-radius: 10px;
	background-color: #123;
	color: white;
	text-decoration: none;
}
</style>
<body>
	<c:import url="/header" />
	<c:import url="/donateheader" />

	<div id="contents">
		<div id="print_wrap">
			<div id="cont_head">
				<h2>기증 내용</h2>
				<!-- 현재위치 -->
				<div id="location">
					<ul>
						<li>홈</li>
						<li>도서 기증</li>
						<li class="now">기증 목록</li>
					</ul>
				</div>
			</div>
			<br>
			<div class="Do_view" align="center">
				<div class="Do_title">${board.subject }</div>
				<div class="Do_info">
					<dl>
						<dt>번호</dt>
						<dd>${board.no}</dd>
					</dl>
					<dl>
						<dt>도서 수량</dt>
						<dd>${board.book_no}</dd>
					</dl>
					<dl>
						<dt>기증 방법</dt>
						<dd>${board.method}</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>${board.reg_date}</dd>
					</dl>
				</div>
				<div class="Do_main">${board.content}</div>
				<div class="Do_btn" align="center">
					<a href="donateForm">목록</a>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/donatefooter" />
	<c:import url="/footer" />
</body>
</html>