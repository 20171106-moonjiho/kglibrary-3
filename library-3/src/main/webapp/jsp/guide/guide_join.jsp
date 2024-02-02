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
				<li class="now">회원가입 안내</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
		<div class="info_use_join">
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="img/join_icon1.gif"
							alt=""></span><span class="txt">대상</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>주민등록상 서울특별시민</li>
						<li>타 시도 거주자 중 서울특별시 소재 직장 재직자, 학교 재학생, 자영업자</li>
						<li>서울특별시에 거주하는 재외동포, 국내 거소신고자, 외국인등록자</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="img/join_icon2.gif"
							alt=""></span><span class="txt">방법</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>도서관 홈페이지 가입(본인 인증 필요)</li>
						<li>구비서류 지참하여 도서관 방문</li>
						<li>도서관 승인</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="/img/join_icon3.gif"
							alt=""></span><span class="txt">구비서류</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>주민등록상 서울특별시민
							<ul class="list2 mt10">
								<li>신분증 상 주소지가 서울: 신분증(주민등록증, 운전면허증, 중고등학생 학생증)</li>
								<li>신분증 상 주소지가 서울이 아닐 경우: 신분증 및 주소지 확인 (주소 이전내역 표기된 주민등록등본,
									서울시민카드 앱)</li>
							</ul>
						</li>
						<li>그 외의 경우 : 신분증과 함께 학생증, 재직증명서(명함), 외국인등록증 초등생 이하 어린이 및 유아의
							경우: 보호자 대리발급시 대리인 신분증, 가족확인서류(주민등록등본, 가족관계확인서, 의료보험증 등)</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="img/join_icon4.gif"
							alt=""></span><span class="txt">사용</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>회원증은 본인 이외의 타인에게 양도 또는 대리 사용하게 할 수 없음</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="img/join_icon5.gif"
							alt=""></span><span class="txt">회원증 재발급</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>회원증을 분실하였을 경우, 신분증을 지참 후 재발급 신청</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>
					<p>
						<span class="img"><img
							src="img/join_icon6.gif"
							alt=""></span><span class="txt">회원의 의무</span>
					</p>
				</dt>
				<dd>
					<ul class="list">
						<li>회원은 주소, 전화번호(휴대폰) 등에 대한 변동사항이 있거나 회원증을 분실하였을 경우 신고하여야 하며,
							이를 태만히 함으로써 발생한 문제의 책임은 회원에게 있음</li>
					</ul>
				</dd>
			</dl>
		</div>

	</div>
	<!--컨테이너끝 -->
	<c:import url="/guidefooter" />
	<c:import url="/footer" />
</body>
</html>