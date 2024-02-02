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
	<c:import url="/guideheader" />
	<link href="guide.css" rel="stylesheet"> 
	<div id="cont_head">
		<h2>이용안내</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>이용안내</li>
				<li class="now">열람실 이용안내</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<h3 class="tit">이용시간</h3>
		<h4 class="tit h4_t">평일 및 주말 공통</h4>
		<ul class="list">
			<li>
			평일 일반열람실 8:00 ~ 22:00/<br>
			주말 일반열람실 9:00 ~ 20:00</li>
		</ul>
		
		<h4 class="tit h4_t">정기휴관일</h4>
		<ul class="list mb30">
			<li>매주 월요일, 장서 및 시설 점검 등 관장이 필요하다고 인정하는 날</li>
			<li>국가공휴일, 임시공휴일은 전실 휴관</li>
		</ul>	
	<br>
		<div class="info_wrap">
		<h4 class="tit">사무실</h4>
		<p>도서관 운영계획을 수립하고 전반적인 시설관리, 전산관리, 도서관 강좌 및 행사 등을 운영하는 업무공간입니다.</p>
	
		<h4 class="tit h4_t">강의실(다문화프로그램실)</h4>
		<p>총 25석으로 각종 문화행사 및 다문화프로그램을 진행하고 있습니다.</p>
	
		<h4 class="tit h4_t">문헌정보실(다문화코너)</h4>
		<p>중학생 이상이면 누구나 이용이 가능하며, 일반도서 열람 및 대출, 신문 및 잡지열람, 노트북 전용책상을 갖추고 있습니다.</p>
	
		<h4 class="tit h4_t">디지털정보실</h4>
	
			<p>PC, DVD, 프린터, 스캐너를 사용 가능하고, 중학생 이상 성동구립도서관 회원이면 누구나 이용 가능합니다. 단, 하루에 한 매체만 이용 가능합니다.</p>
			
			<table class="table1">
			<caption>전자정보실 이용안내</caption>
			<colgroup>
				<col width="33%">
				<col width="33%">
				<col width="33%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">이용구분</th>
					<th scope="col">이용방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="eng">PC</td>
					<td>이용시간은 1일 3시간 이내로 제한 </td>
					<td>무료</td>
				</tr>
				<tr>
					<td class="eng">DVD</td>
					<td>1일 1점 이용</td>
					<td>무료</td>
				</tr>
				<tr>
					<td>프린터</td>
					<td>전 좌석 PC에서 출력<br>사용료 지불은 카드만 이용가능<br>(신용/체크카드,삼성페이,티머니)</td>
					<td>[사용료] <br>A4 30원[흑백] 300원[컬러]<br>B4 40원[흑백]</td>
				</tr>
				<tr>
					<td>스캐너</td>
					<td>전 좌석 PC에서 사용 가능</td>
					<td>무료</td>
				</tr>
			</tbody>
		</table>
	
		<h4 class="tit h4_t">어린이열람실(영어원서코너)</h4>
		<p>어린이 전용 열람실로 어린이도서, 어린이 원서 코너, 어린이 신문, 어린이 정기간행물 등을 소장하고 있습니다.</p>
	
		<h4 class="tit h4_t">유아열람실(이야기마루)</h4>
		<p>유아 및 미취학 어린이를 위한 전용공간으로 유아도서를 소장하고 있습니다.</p>
	
		<h4 class="tit h4_t">일반열람실</h4>
		<p>총 53석으로 중학생 이상 이용 가능하며 좌석발급시스템을 통해 지정석에서 학습할 수 있습니다.</p>
	
		<h4 class="tit h4_t">휴게공간</h4>
		<p>자판기, 정수기 등이 있으며 음료 및 냄새가 많이 나지 않는 음식물 섭취가 가능한 휴게 공간입니다.</p>
	</div>
			
	</div>
	<!--컨테이너끝 -->
	<c:import url="/guidefooter" />
	<c:import url="/footer" />
</body>
</html>