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

		<h3 class="tit">대출권수</h3>
		<ul class="list">
			<li>7권 이내(화~일 09:00~20:00)</li>
		</ul>
		<h3 class="tit h3_t">대출기간</h3>
		<ul class="list">
			<li>7일(2주) 이내(1회에 한하여 7일 연장가능)</li>
		</ul>
		<h3 class="tit h3_t">대출/반납절차</h3>
		<ul class="list">
			<li>대출하고자 하는 책과 독서회원카드를 대출대에 제시합니다.
				<ul class="list2">
					<li>※유의사항 : 참고자료와 정기간행물은 대출할 수 없습니다.</li>
				</ul>
			</li>
			<li>반납일자를 기억합니다. 차후에 반납일자를 확인하고자 할 경우, 도서관 홈페이지에서 마이페이지 - 대출목록을 확인하면 됩니다.</li>
			<li>반납 시에는 독서회원카드를 제시할 필요가 없이 대출한 책만 돌려줍니다.
				<ul class="list2">
					<li>※KG 도서관 자료라면, KG 도서관 어느 곳에나 반납이 가능합니다.
					</li>
				</ul>
			</li>
			<li>가족의 독서회원카드로 도서를 대출하고자 할 경우 가족임을 확인할 수 있는 주민등록등본이나 의료보험증 같은
				가족관계증명서와 본인의 신분증이나 독서회원카드를 함께 지참하셔야합니다.</li>
		</ul>
		<h3 class="tit h3_t">대출기간연장</h3>
		<ul class="list">
			<li>1회에 한하여 7일 연장가능합니다.</li>
			<li>도서관 홈페이지 마이페이지 - 대출목록에서 가능합니다.</li>
			<li>직접 도서관에 방문할 경우, 독서회원카드를 제시해야 합니다.</li>
			<li>연체가 될 경우, 대출 연장이 불가능하므로 반납예정일 전에 처리해야 합니다.</li>
		</ul>
		<h3 class="tit h3_t">연체 / 대출금지 (공통)</h3>
		<ul class="list">
			<li>연체자료가 있을 경우 대출 금지, 디지털정보실 이용에 제한이 있습니다.
				<ul class="list2">
					<li>대출금지 일수: 연체일수 × 2배</li>
				</ul>
			</li>
			<li>연체료를 납부하는 경우, 대출금지를 해제할 수 있습니다.
				<ul class="list2">
					<li>반납당일 연체료: 도서 1권당 연체일수 × 100원</li>
					<li>대출금지기간 중 연체료: 도서 1권당 잔여 대출금지일수 × 50원</li>
				</ul>
			</li>
			<li>성동, 금호, 용답, 무지개, 성수, 청계, 숲속, 작은 도서관 중 1곳에서 연체하여도 전체 도서관에서
				불이익을 받게 됩니다.</li>
		</ul>
	</div>
	<!--컨테이너끝 -->
	<c:import url="/guidefooter" />
	<c:import url="/footer" />
</body>
</html>