<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회의실 예약</title>
</head>
<link href="../reservation.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<body>
	<script src="http://www.gwep.or.kr/js/jquery-1.8.3.min.js"></script>
	<%@ include file="/jsp/default/header.jsp" %>
	<%@ include file="/jsp/reservation/reservationheader.jsp" %>
	<div class="step_box">
		<form name="form_01_1" action="reservation/new_result" method="post">
			<input type="hidden" name="room" id="room_t" value=""> <input
				type="hidden" name="year_t" id="year_t" value=""> <input
				type="hidden" name="month_t" id="month_t" value=""> <input
				type="hidden" name="day_t" id="day_t" value=""> <input
				type="hidden" name="time_t" id="time_t" value="">
			<div class="step_room">
				<div class="title">
					<span><i class="fas fa-door-open"></i>회의실선택 </span>
				</div>
				<div class="step_contents">
					<div class="select_list">
						<ul class="step_room_ul">
							<li><a href="#none" class="se_pl " rel="101">101</a></li>
							<li><a href="#none" class="se_pl " rel="102">102</a></li>
							<li><a href="#none" class="se_pl " rel="103">103</a></li>
							<li><a href="#none" class="se_pl " rel="201">201</a></li>
							<li><a href="#none" class="se_pl " rel="202">202</a></li>
							<li><a href="#none" class="se_pl " rel="203">203</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="step_date" style="position: relative;">
				<div class="title">
					<span><i class="fas fa-calendar-alt"></i>날짜선택</span>
				</div>
				<div class="step_contents step_date_contents"></div>
			</div>
		</form>
		<script src="../reservation.js"></script>
		<div class="step_time">
			<div class="title">
				<span><i class="fas fa-clock"></i>시간선택</span>
			</div>
			<div class="step_contents">
				<div class="select_list">
					<ul class="step_time_ul">
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="reservation">
		<span class="ex_none"></span> 예약불가 <span class="ex_select"></span>
		예약가능
	</div>
	<div align="center">
		<a href="../myReservation" class="btn btn_submit"
			style="display: inline-block; width: 150px; height: 40px; line-height: 40px; margin: 20px auto; margin: 0 3px; color: #000; border: 1px solid #dedede;">예약현황으로</a>
		<a href="#none" onclick="f_submit();" class="btn btn_submit"
			style="display: inline-block; width: 150px; height: 40px; line-height: 40px; margin: 20px auto; margin: 0 3px; color: #000; border: 1px solid #dedede;">회의실
			예약하기</a>
	</div>
	<%@ include file="/jsp/reservation/reservationfooter.jsp" %>
	<%@ include file="/jsp/default/footer.jsp" %>
</body>
</html>