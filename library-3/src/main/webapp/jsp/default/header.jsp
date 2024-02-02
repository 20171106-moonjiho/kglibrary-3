<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<link href="common.css" rel="stylesheet">
	<link href="main.css" rel="stylesheet"> 
	<link href="notice.css" rel="stylesheet">
	<link href="swiper.css" rel="stylesheet">
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
 	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.10/index.global.min.js'></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script src="script-3.js"></script>
	<script src="header.js"></script>
<div id="wrap">
		<!--메뉴 시작-->
		<div class="header_top" style="height:40px; background: #8C8C8C"></div>
		<div class="header">
			<div class="top_bar">
				<div class="wsize">
					<div class="logo">
					<h1><a href="index"><img src="img/logo_4.png"></a></h1>
					</div>
					<ul class="aside_menu">	

						<li class="login">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<a href="login">로그인</a>
								</c:when>
								<c:otherwise>
									<a href="logout">로그아웃</a>
								</c:otherwise>
							</c:choose>
						</li>
						<li class="join">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<a href="terms">회원가입</a>
								</c:when>
								<c:otherwise>
									<a href="userInfo">마이페이지</a>
								</c:otherwise>
							</c:choose>
						</li>	
						<c:if test="${sessionScope.id eq 'admin' }">
							<li class="admin">
							<a href="admin">관리자페이지</a>
							</li>
						</c:if>	
					</ul>
				</div>
			</div>

			<div class="menu_bar">
				<div class="menu_area active">
					<div class="gnb_bg" style="display: none;"></div>
				<ul>
					<li><a href="bookForm">자료검색</a>
						<div class="two_depth">
								<p class="bmenu_tit">도서자료검색</p>
								<ul>	
									<li><a href="bookForm" >도서자료검색
									</a></li>
									<li><a href="bookHopeForm" >비치 희망 도서
									</a></li>
									<c:choose>
										<c:when test="${sessionScope.id eq 'admin'}">
									
											<li><a href="apiBookRegist" >API 등록
											</a></li>
										</c:when> 
									</c:choose>	
									
								</ul>
						</div>
					</li>
					<li><a href="guide_room">이용안내</a>
						<div class="two_depth">
								<p class="bmenu_tit">이용안내</p>
								<ul>	
									<li><a href="guide_room" >열람실 이용안내
									</a></li>
									<li><a href="guide_join" >회원가입 안내
									</a></li>
									<li><a href="guide_book" >도서대출/반납
									</a></li>
								</ul>
						</div>
					</li>
					<!-- 
					<li><a href="#">디지털도서관</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="#" >통합자료 검색
									</a></li>
									<li><a href="#" >신착자료 검색
									</a></li>
									<li><a href="#" >대출 베스트
									</a></li>
									<li><a href="#" >정기간행물
									</a></li>
								</ul>
						</div>
					</li>
					  -->
					<li><a href="cultureboard">문화마당</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="cultureboard" >문화행사
									</a></li>
								</ul>
						</div>
					</li>
					
					<li><a href="reservation">회의실</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="reservation" >회의실 예약
									</a></li>
								</ul>
						</div>
					</li>
					 
					<li><a href="donateguide">도서 기증</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="donateguide" >기증 안내
									</a></li>
									<li><a href="donateWrite" >기증 신청
									</a></li>
									<li><a href="donateForm" >기증 목록
									</a></li>									
								</ul>
						</div>
					</li>
					<li><a href="introduction">도서관소개</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="introduction" >인사말
									</a></li>
									<li><a href="dataStatus" >자료 현황
									</a></li>
									<li><a href="map" >찾아오시는길
									</a></li>
								</ul>
						</div>
					</li>
					<li><a href="noticeBoard">이용자마당</a>
						<div class="two_depth">
								<p class="bmenu_tit">자료검색</p>
								<ul>	
									<li><a href="noticeBoard" >공지사항
									</a></li>
									<li><a href="ask_board" >묻고 답하기
									</a></li>
									<li><a href="noticeboard_cal" >도서관 일정
									</a></li>
								</ul>
						</div>
					</li>
				</ul>
				</div>
			</div>
			<div class="gnb_bg"></div>
		</div>