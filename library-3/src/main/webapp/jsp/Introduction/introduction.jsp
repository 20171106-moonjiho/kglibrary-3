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
	<c:import url="/Introductionheader" />
	<link href="Introduct.css" rel="stylesheet">
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>

	<div id="cont_head">
		<h2>인사말</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서관소개</li>
				<li class="now">인사말</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">
	<div class="greeting">
			<div class="gree_box">
				<p><strong style="font-weight: bold">KG도서관</strong> 홈페이지를<br>찾아주셔서 감사합니다.</p>
			</div>
			<div class="gree_txt">
				<p class="stit">안녕하십니까?<br>
				 KG도서관 홈페이지에 오신 것을 환영합니다.</p>
				<p>KG도서관은 2012년 9월 14일 개관하였습니다. 한 해 8,000여권의 자료가 확충되고 있으며, 일일 1,000여명의 이용자 방문으로 지역주민의 문화공간으로서 중추적인 역할을 수행하고 있습니다. </p>
				<p>KG도서관은 종로구 지역내 문화, 예술,복지를 담당하는 종로문화복지회관의 7층에 위치하고 있으며, 아름다운 서울숲 전경과 함께 지역민들의 책과 사람, 문화가 만나는 커뮤니티의 공간으로 거듭나고 있습니다. </p>
				<p>또한 개관 이후 다양한 다문화자료와 영어원서 등을 지속적으로 확충하여 차별화된 정보를 기반으로 평생학습 및 문화향유의 기회를 제공하여 지역사회와 함께하는 도서관이 되고자 노력하고 있습니다. </p>
				<p>앞으로도 책속에서 삶의 지혜를 얻고, 행복을 느낄 수 있는 KG도서관이 되도록 언제나 최선을 다하겠습니다. </p>
				<p>지역민들과 많은 관심과 격려 부탁드립니다.</p>
			</div>
		</div>
		

	
	</div>
	<!--컨테이너끝 -->
	<c:import url="/Introductionfooter" />
	<c:import url="/footer" />
</body>
</html>