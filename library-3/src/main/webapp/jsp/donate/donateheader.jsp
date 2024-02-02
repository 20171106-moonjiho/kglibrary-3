<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container">
		<!--사이드바 시작-->
			<div class="swsize">
				<div id="sidebar">
					<div class="stit">
						<p class="eng"></p>
						<h2>도서 기증</h2>
					</div>
					<div id="sidemenu">
						<p class="tit jsMMenuText"><a href="#" class="jsMMenuBtn">공지사항
									</a></p>
						<ul id="jsMMenu">
								<li id="donateguide">
									<a href="donateguide">기증 안내
									</a>
								</li>
								<li id="donateWrite">
									<a href="donateWrite">기증 신청
									</a>
								</li>
								<li id="donateForm">
									<a href="donateForm">기증 목록
									</a>
								</li>
						</ul>
						<script>
							document.getElementById('${menu}').setAttribute('class', 'on');
						</script>
					</div>
					<div id="jsFacetLeft">				
					</div>
				</div>
			</div><!--사이드바 끝-->