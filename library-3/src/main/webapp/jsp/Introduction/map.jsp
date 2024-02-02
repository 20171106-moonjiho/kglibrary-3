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
		<h2>이용안내</h2>
		<!-- 현재위치 -->
		<div id="location">
			<ul>
				<li>홈</li>
				<li>도서관소개</li>
				<li class="now">찾아오시는길</li>
			</ul>
		</div>
		<!-- //현재위치 -->
	</div>

	<div id="cont_wrap">

		<div id="map"
			style="position: relative; width: 100%; height: 390px; border: 1px solid #d5d5d5; overflow: hidden;">
		
		<!-- * 카카오맵 - 지도퍼가기 -->
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1704871350326"
			class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;"></div>
		</div>
		<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
		-->
		<script charset="UTF-8" class="daum_roughmap_loader_script"
			src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1704871350326",
				"key" : "2hmug",
			}).render();
		</script>

	<div class="m_info">
		<h3 class="tit h3_t">교통정보안내</h3>
		<div class="box subway">
			<div class="tit">
				<h3>지하철</h3>
			</div>
			<div class="desc">
				<ul>
					<li><span class="line1 ico">3호선</span> </li>
					<li>종로3가 하차 - 9번출구 도보 1분</li>
				</ul>				
			</div>
		</div>
		<div class="box bus">
			<div class="tit">
				<h3>버스</h3>
			</div>
			<div class="desc">
				<ul>
					<li> *종로3가 탑골 공원 하차 후 도보 5분</li>
					<li><span class="line5 ico">간선</span> 101, 103,143, 150, 160</li>
					<li><span class="line6 ico">지선</span> 7101, 9301</li>
				</ul>				
			</div>
		</div>
	</div>
	</div>
	<!--컨테이너끝 -->
	<c:import url="/Introductionfooter" />
	<c:import url="/footer" />
</body>
</html>