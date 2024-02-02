<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/jsp/default/favicon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
<c:import url="/header" />
<c:import url="/cultureheader"/>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="culture.js"></script>

					<div id="cont_head">
							<h2>게시글 등록</h2>
							<!-- 현재위치 -->
							<div id="location">
								<ul>
									<li>홈</li>
									<li>문화마당</li>
									<li class="now">문화행사</li>
								</ul>
							</div>
							<!-- //현재위치 -->
						</div>
					
					<div id="cont_wrap">
						<div id="board" style="width:100%;">
							<form action="cultureModifyPro" method='post' id="f" enctype="multipart/form-data">
							<input type="hidden" name="no" value="${board.no }" />
								<div class="table_bwrite">
									<table cellspacing="0" summary="묻고 답하기의 이름, 비밀번호, 내용을 입력">
										<colgroup>
										<col width="135">
										<col width="">
										</colgroup>
									
									<tbody>
			
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 제목</label></th>
											<td><input type="text" size="100" id="b_subject" name="title" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.title }" maxlength="100" style="width:70%">
											<span class="text1">* 100자리 이내로 입력해주세요.</span>
											</td>
										</tr>
										
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 행사 기간</label></th>
											<td><input type="text" size="100" id="class_period_start" name="class_period_start" 
											class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);"
											value="${board.class_period_start }" maxlength="100" style="width:30%; text-align: center;" >
											~
											<input type="text" size="100" id="class_period_end" name="class_period_end" 
											class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);"
											value="${board.class_period_end }" maxlength="100" style="width:30%; text-align: center;" >
											</td>
										</tr>
										
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 신청 기간</label></th>
											<td><input type="text" size="100" id="reservation_period_start" name="reservation_period_start" 
											class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);"
											value="${board.reservation_period_start }" maxlength="100" style="width:30%; text-align: center;" >
											~
											<input type="text" size="100" id="reservation_period_end" name="reservation_period_end" 
											class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);"
											value="${board.reservation_period_end }" maxlength="100" style="width:30%; text-align: center;" >
											</td>
										</tr>
										
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 수강 대상</label></th>
											<td><input type="text" size="100" id="b_subject" name="target" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.target }" maxlength="100" style="width:30%;text-align: center;">
											<span class="text1">* 초,중,대학생 기준으로 적어주세요.</span>
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 행사 장소</label></th>
											<td><input type="text" size="100" id="b_subject" name=event_area class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.event_area }" maxlength="100" style="width:30%;text-align: center;">
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 접수 장소</label></th>
											<td><input type="text" size="100" id="b_subject" name="reception_area" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.reception_area }" maxlength="100" style="width:30%;text-align: center;">
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 모집 인원</label></th>
											<td><input type="text" size="100" id="b_subject" name="people" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.people }" maxlength="100" style="width:30%;text-align: center;">
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 참가비</label></th>
											<td><input type="text" size="100" id="b_subject" name="money" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.money }" maxlength="100" style="width:30%;text-align: center;">
											<span class="text1">* 기본 값은 무료 입니다.</span>
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 강사명</label></th>
											<td><input type="text" size="100" id="b_subject" name="teacher" class="board_input subject" onfocus="focus_on1(this);" onblur="focus_off1(this);" value="${board.teacher }" maxlength="100" style="width:30%;text-align: center;">
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject"><img alt="*(필수항목)" src="/img/ic_vcheck.gif"> 내용</label></th>
											<td>
											<textarea name="contents" placeholder="내용을 입력하세요." style="width:90%; height: 230px;">${board.contents }</textarea>
											</td>
										</tr>
										<tr>
											<th scope="row"><label for="b_subject">파일 업로드</label></th>
											<td>
											<p	 style="font-size:13px; ">
												<span style="color: lightcoral">※ 사진첨부시 주의사항</span><br>
												1. 사진용량이 너무 크거나, bmp 파일은 에러가 발생할 수 있습니다.<br>
												2. 사진의 파일명은 반드시 영문으로 등록해주세요.<br>
												3. 사진에 상세 입력사항을 넣거나 타사이트 주소를 게시할 경우 등록글은 삭제됩니다.<br>
												4. 업로드할 사진의 파일은 <span style="color: lightcoral">jpg, jpeg, png만</span> 가능합니다.
											</p>
											<br>
											<input type="file" name="upfile">${board.image }<br>
											</td>
										</tr>
									</tbody>
									</table>
								</div>
								
								<div class="board_button2">
									<span><input id="submitbtn" type="button" value="수정하기" onclick="culture_check()"class="cbtn cbtn_point" ></span>
									<span><input type="button" value="목록"	 onclick="location.href='cultureboard'" class="cbtn cbtn_g"></span>
								</div>
								
							</form>
							
						</div>
					</div>
<c:import url="/culturefooter"/>
<c:import url="/footer" />
</body>
</html>