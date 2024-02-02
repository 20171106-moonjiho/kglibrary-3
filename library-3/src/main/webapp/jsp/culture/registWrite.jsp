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
	<c:import url="/cultureheader" />
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="culture.js"></script>
	<link href="culture.css" rel="stylesheet">

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
		<div id="board" style="width: 100%;">
			<form action="registWritePro" method='post' id="f"
				enctype="multipart/form-data">
				 <input type="hidden" name="no" value="${param.no}" />
				<div class="table_bwrite">
					<table cellspacing="0" summary="묻고 답하기의 이름, 비밀번호, 내용을 입력">
						<colgroup>
							<col width="135">
							<col width="">
						</colgroup>

						<tbody>

							<tr>
								<th scope="row"><label for="b_subject"><img
										alt="*(필수항목)" src="/img/ic_vcheck.gif"> 제목</label></th>
								<td><input type="text" size="100" id="b_subject"
									name="title" class="board_input subject"
									onfocus="focus_on1(this);" onblur="focus_off1(this);"
									value="${title }" maxlength="100" style="width: 70%"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th scope="row"><label for="b_subject"><img
										alt="*(필수항목)" src="/img/ic_vcheck.gif"> 이름</label></th>
								<td><input type="text" size="100" id="b_subject" name="name"
									class="board_input subject" onfocus="focus_on1(this);"
									onblur="focus_off1(this);" value="${M_board.name }" maxlength="100"
									style="width: 70%" readonly="readonly"></td>
							</tr>

							<tr>
								<th scope="row"><label for="b_subject"> 보호자명</label></th>
								<td><input type="text" size="100" id="b_subject"
									name="p_name" class="board_input subject"
									onfocus="focus_on1(this);" onblur="focus_off1(this);" value=""
									maxlength="100" style="width: 30%; text-align: center;">
									<span class="text1" style="color: #e64847">* 아동접수시 보호자명을
										입력하세여</span></td>
							</tr>
							<tr>
								<th scope="row"><label for="b_subject"><img
										alt="*(필수항목)" src="/img/ic_vcheck.gif"> 연락처</label></th>
								<td><input type="text" size="100" id="b_subject"
									name=tel class="board_input subject"
									onfocus="focus_on1(this);" onblur="focus_off1(this);"
									value="${M_board.tel }" maxlength="100"
									style="width: 30%; text-align: center;"></td>
							</tr>
							<tr>
								<th scope="row"><label for="b_subject"><img
										alt="*(필수항목)" src="/img/ic_vcheck.gif"> 이메일</label></th>
								<td><input type="text" size="100" id="b_subject"
									name=email class="board_input subject"
									onfocus="focus_on1(this);" onblur="focus_off1(this);"
									value="${M_board.email }" maxlength="100"
									style="width: 30%; text-align: center;"></td>
							</tr>
							<tr>
								<th scope="row"><label for="b_subject"><img
										alt="*(필수항목)" src="/img/ic_vcheck.gif"> 주소</label></th>
								<td><input type="text" size="100" id="b_subject"
									name=address class="board_input subject"
									onfocus="focus_on1(this);" onblur="focus_off1(this);"
									value="${M_board.address }" maxlength="100"
									style="width: 30%; text-align: center;"></td>
							</tr>
							<tr>
								<th scope="row"><label for="es_school">소속</label></th>
								<td><input type="text" name="es_school" id="es_school"
									style="width: 100px" class="board_input" maxlength="15"
									value=""> 학교&nbsp; <input type="text" name="es_hak"
									id="es_hak" style="width: 30px" class="board_input mini"
									maxlength="2" value="" onblur="SetNum(this);"> <label
									for="es_hak">학년</label>&nbsp; <input type="text" name="es_ban"
									id="es_ban" style="width: 30px" class="board_input mini"
									maxlength="2" value="" onblur="SetNum(this);"> <label
									for="es_ban">반</label> <span class="text1"
									style="color: #E55E1B;">* 학생은 필수입력사항입니다.</span></td>
							</tr>
							<tr>
								<th scope="row"><label for="b_subject"> 기타</label></th>
								<td><textarea name="contents" placeholder="내용을 입력하세요."
										style="width: 90%; height: 230px;"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="agreeBox">
					<!-- . -->
					<div class="area">
						<h3 class="tit">개인정보의 수집 및 이용</h3>
						<p class="check">
							<input type="checkbox" name="agree2" id="agree1"> <label
								for="chk_agree">본 강좌신청을 위한 개인정보 수집 및 이용에 동의합니다.</label>
						</p>
						 <div class="txt_box">
					        온라인 수강신청을 위하여 아래와 같이 개인정보를 수집 및 이용하고자 합니다.<br>	<br>
					        <ol>
					            <li>개인정보의 수집 및 이용 목적 : 해당 강좌의 신청자 확인 및 운영. (수강신청 시 수집되는 개인정보는 목적 외 용도로 이용하지 않습니다.)</li>
					            <li>수집하는 개인정보의 항목 : 수강생 성명, 생년월일, 성별, 휴대폰번호, 주소 (어린이 강좌의 경우, 보호자 성명)</li>
					            <li>개인정보의 보유 및 이용기간 : 1년</li>
					            <li>수강신청자는 개인정보 수집·이용에 대하여 동의를 거부할 수 있는 권리가 있습니다. 단, 이에 대한 동의를 거부할 경우에는 수강신청이 불가능합니다.</li>
					        </ol>
					    </div>
					</div>
					<!-- //. -->
					<!-- . -->
					<div class="area">
						<h3 class="tit">개인정보 제3자 제공 동의</h3>
						<p class="check">
							<input type="checkbox" name="agree2" id="agree2">
							<label for="chk_agree2">본 강좌신청을 위한 개인정보 제3자 제공에 동의합니다.</label>
						</p>
						<div class="txt_box">
					        온라인 수강신청을 위하여 아래와 같이 개인정보를 수집 및 이용하고자 합니다.<br>	<br>	
					        <ol>
					            <li>개인정보의 수집 및 이용 목적 : 해당 강좌의 신청자 확인 및 운영. (수강신청 시 수집되는 개인정보는 목적 외 용도로 이용하지 않습니다.)</li>
					            <li>수집하는 개인정보의 항목 : 수강생 성명, 생년월일, 성별, 휴대폰번호, 주소 (어린이 강좌의 경우, 보호자 성명)</li>
					            <li>개인정보의 보유 및 이용기간 : 1년</li>
					            <li>수강신청자는 개인정보 수집·이용에 대하여 동의를 거부할 수 있는 권리가 있습니다. 단, 이에 대한 동의를 거부할 경우에는 수강신청이 불가능합니다.</li>
					        </ol>
					    </div>
					</div>
					<!-- //. -->
				</div>

				<div class="board_button2">
					<span><input id="submitbtn" type="button" value="신청"
						onclick="regist_check()" class="cbtn cbtn_point"></span> <span><input
						type="button" value="목록" onclick="location.href='cultureboard'"
						class="cbtn cbtn_g"></span>
				</div>

			</form>

		</div>
	</div>
	<c:import url="/culturefooter" />
	<c:import url="/footer" />
</body>
</html>