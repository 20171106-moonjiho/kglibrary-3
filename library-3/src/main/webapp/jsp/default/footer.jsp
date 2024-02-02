<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!--푸터 시작-->
		<div class="footer">
			<div class="addr">
				<div class="wsize">
					<ul class="clearAfter add_li">
						<li><a href="#">이메일무단수집거부</a></li>
						<li><a href="#">사이트맵</a></li>
					</ul>
				</div>
			</div>
			
			<div class="addr_bottom">
					<div class="addr_right">
						<p class="add">
							<span class="eng2">(04778)</span>서울특별시 성동구 뚝섬로1길 43 (성수1가1동 656-323) 성수문화복지회관 내 7층
							<span class="call">전화번호 : <span class="tel eng2"> 02-2204-7590</span></span>
							<span class="fax">팩스번호:<span class="eng2">02-462-7590</span></span></p>				
						<p class="copy eng2">Copyright (C) <span class="lib">성동구립성수도서관.</span> All Rights Reserved.</p>
					</div>
				</div>
		</div>
	</div>
 <script>
    const progressCircle = document.querySelector(".autoplay-progress svg");
    const progressContent = document.querySelector(".autoplay-progress span");
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      },
      on: {
        autoplayTimeLeft(s, time, progress) {
          progressCircle.style.setProperty("--progress", 1 - progress);
          progressContent.textContent = `${Math.ceil(time / 1000)}s`;
        }
      }
    });
  </script>