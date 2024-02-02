<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>		
		<!-- 검색부분 -->
		<div class="search">
				<div class="search_btn_wrap">
					<h3>소장자료검색</h3>	
					<form id="frm_main_search" method="get" action="bookForm">
						<div class="search_bar">
							<select name="select" id="search_item">
								<option value="title" selected="selected">제목</option>
								<option value="author">저작자</option>
								<option value="category">카테고리</option>
							</select>
							<div class="search_bar_text">
								<!-- <label for="search_txt" class="search_m" style="">검색어를 입력하세요.</label> -->
								<c:choose>
									<c:when test="${empty search or search == 'null'}">
										<input type="text" name="search" class="search_text" id="search_txt" value=""  placeholder="검색어를 입력해주세요.">
									</c:when>
									<c:otherwise>
										<input type="text" name="search" class="search_text" id="search_txt" value="${search }" placeholder="검색어를 입력해주세요.">
									</c:otherwise>
								</c:choose>
								<!-- <input type="text" name="search" class="search_text" id="search_txt" value=""> -->
								<input type="submit" class="search_btn" value="검색">
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="sub_bar">
				<div class="sub_bar">
				<div class="link_btn">
			<ul>
				<li><a href="guide_room"><i class="link01 hvr-bob"></i><span>이용안내</span></a></li>
				<li><a href="cultureboard"><i class="link02 hvr-bob"></i><span>문화행사<br>신청</span></a></li>
				<li><a href="bookForm"><i class="link03 hvr-bob"></i><span>도서자료</span></a></li>
				<li><a href="reservation"><i class="link04 hvr-bob"></i><span>회의실<br>예약현황</span></a></li>
				<li><a href="donateguide"><i class="link06 hvr-bob"></i><span>기증신청 <br>게시판</span></a></li>
				<li><a href="dataStatus"><i class="link05 hvr-bob"></i><span>자료 현황</span></a></li>
			</ul>
		</div>
			</div>
			</div>
		<!--컨텐츠 시작-->
		<div class="content">
			<div class="cont_1">
				<div class="innor">
					<div class="innor_left">
						<h2>공지사항</h2>
						<ul>
						<c:forEach var="board" items="${boards}">
							<li>
								<a href="noticeboard_Content?no=${board.no }"><p class="ntit">${board.title }</p></a>
								<span class="date">${board.writeDate }</span>
							</li>
						</c:forEach>
						</ul>
						<div class="notice_more">
							<a href="noticeBoard"><img src="img/notice_btn.png" alt="새소식 자세히 보기"></a>
						</div>
					</div>
					<div class="innor_right">
						<h2>문화행사</h2>
						<ul>
							<li>
								<span class="lib_name lib02">어린이</span>
								<a href="#"><p class="ntit">2024년 겨울 독서교실 KG문학소년소녀</p></a>
								<span class="date">23-12-21</span>
							</li>
							<li>
								<span class="lib_name lib04">청소년</span>
								<a href="#"><p class="ntit">12월 직업인으로서의 간호사 김진수 간호사와의 만남 </p></a>
								<span class="date">23-12-21</span>
							</li>
							<li>
								<span class="lib_name lib02">어린이</span>
								<a href="#"><p class="ntit">겨울방학 특강 숭민이의 일기 이승민 작가와의 만남</p></a>
								<span class="date">23-12-21</span>
							</li>
							<li>
								<span class="lib_name lib02">어린이</span>
								<a href="#"><p class="ntit">겨울방학 특강 달빛 그림자 가게 김우수 X 정은경 작가와의 만남 </p></a>
								<span class="date">23-12-21</span>
							</li>
						</ul>
						<div class="notice_more">
							<a href="cultureboard"><img src="img/notice_btn.png" alt="새소식 자세히 보기"></a>
						</div>
					</div>
				</div>
			</div>
			<div class="innor col3">
			<!-- 팝업존 -->
				<div class="popupzone">
					<!-- Swiper -->
					<div class="swiper mySwiper">
						<div class="swiper-wrapper">
						 	<div class="swiper-slide"><a href="#"><img src="img/slideimg1.png" alt="img1"></a></div>
						 	<div class="swiper-slide"><a href="#"><img src="img/slideimg2.jpg" alt="img2"></a></div>
							<div class="swiper-slide"><a href="#"><img src="img/slideimg3.jpg" alt="img3"></a></div>
							<div class="swiper-slide"><a href="#"><img src="img/slideimg4.png" alt="img4"></a></div>
						</div>
<!--
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
-->
					<div class="swiper-pagination"></div>
					<div class="autoplay-progress" style="opacity: 30%">
					  <svg viewBox="0 0 48 48">
						<circle cx="24" cy="24" r="20"></circle>
					  </svg>
					  <span></span>
					</div>
				  </div>
				</div>
				<!-- 북픽 -->
				<div class="bookpick">
					<div class="tab-menu2">
					  <div class="tab-btn"> 
						<ul>
						 <li class="on"><a href="#">추천도서</a></li>   
						 <li><a href="#">신작도서</a></li>   
						</ul>
					  </div><!-- tab-btn/ -->

					 <div class="tab-cont">
						<div class="t-cont1">
							 <ul>
							 <c:forEach var="hitbook" items="${hitbooks}" >
							 	 <li>
							 	 <a href="bookContent?no=${hitbook.no }">
							 	<img src="../img/admin/${hitbook.image}" alt="">
								  <div class="overrap">
								  	<span class="btit">${hitbook.title_info}</span>
									<span class="name">${hitbook.author_info}</span>
									<span class="more">더보기</span>
								  </div>
								  </a>
							  </li>  
							 </c:forEach>
							 </ul> 
						</div>
						<div class="t-cont1">
							 <ul>
							 <c:forEach var="newbook" items="${newbooks}" >
							 	 <li>
							 	 <a href="bookContent?no=${newbook.no }">
							 	 <c:choose>
									<c:when
										test="${not empty newbook.image && newbook.category ne 'API'}">
										<img src="../img/admin/${newbook.image}" alt="">
										<br>
									</c:when>
									<c:otherwise>
										<img src="${newbook.image }">
										<br>
									</c:otherwise>
								</c:choose>
								  <div class="overrap">
								  	<span class="btit">${newbook.title_info}</span>
									<span class="name">${newbook.author_info}</span>
									<span class="more">더보기</span>
								  </div>
								  </a>
							  </li>  
							 </c:forEach>
							 </ul>   
						</div>
					  </div><!-- tab-cont/ -->

					  </div><!-- tab-menu2/ -->
					
				</div>
			</div>
			
			<div class="innor col4">
				<div id="div_calendar" class="calendar_wrap">
					<div class="swiper mySwiper2">
					    <div class="swiper-wrapper">
					      <div class="swiper-slide">
					       <img src="img/41236691625.20230919130622.jpg" alt="">
					      </div>
					      <div class="swiper-slide">
					        <img src="img/40691554619.20230919124023.jpg" alt="">
					      </div>
					      <div class="swiper-slide">
					        <img src="img/40641325628.20230718121618.jpg" alt="">
					      </div>
					       <div class="swiper-slide">
					       <img src="img/41236691625.20230919130622.jpg" alt="">
					      </div>
					      <div class="swiper-slide">
					        <img src="img/40691554619.20230919124023.jpg" alt="">
					      </div>
					      <div class="swiper-slide">
					        <img src="img/40641325628.20230718121618.jpg" alt="">
					      </div>
					    </div>
					 </div>
					 <script>
					 var swiper = new Swiper(".mySwiper2", {
					      effect: "coverflow",
					      grabCursor: true,
					      //centeredSlides: true,
					       autoplay: {
					        delay: 5000,
					        disableOnInteraction: false
					      },
					      slidesPerView: 3,
					      coverflowEffect: {
					        rotate: 50,
					        stretch: 0,
					        depth: 100,
					        modifier: 1,
					        slideShadows: true,
					      },
					      pagination: {
					        el: ".swiper-pagination",
					      },
					    });
					  </script>
				</div>
				
				<div class="goto">
					<ul>
						<li class="ban01 button-2"><a href="#">책누리<br>안내</a></li>
						<li class="ban02 button-2"><a href="#">도서예약<br>안내</a></li>
						<li class="ban03 button-2"><a href="#">핑크책방<br>이용안내</a></li>
						<li class="ban04 button-2"><a href="#">희망도서<br>신청안내</a></li>
						<li class="ban05 button-2"><a href="#">책바다/책나래</a></li>
						<li class="ban06 button-2"><a href="#">사서에게<br>물어보세요</a></li>
					</ul>
				</div>
			</div>
		</div>

