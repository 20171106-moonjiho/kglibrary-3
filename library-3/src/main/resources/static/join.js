function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('sample6_postcode').value = data.zonecode;
			document.getElementById("sample6_address").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample6_detailAddress").focus();
		}
	}).open();
}
$("#phoneAutChk").val("false");
$(function() {
	//휴대폰 번호 인증var code2 = "";

	$("#phoneChk").click(function() {
		var tel = $("#tel").val();
		if (tel == null || tel == "") {
			alert('번호를 입력하세요.');
		} else {
			alert('인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.');
			$.ajax({
				type: "POST", // post 형식으로 발송
				url: "mobileCheck", // controller 위치
				data: { tel: tel }, // 전송할 데이터값
				cache: false,
				success: function(data) {
					if (data == "error") { //실패시 
						alert("휴대폰 번호가 올바르지 않습니다.")
					} else {            //성공시        
						alert("휴대폰 전송이 됨.")
						code2 = data; // 성공하면 데이터저장
						$("#phone2").attr("disabled", false);
						$("#tel").attr("readonly", true);
					}
				}
			});
		}
	});


	//휴대폰 인증번호 대조
	$("#phoneChk2").click(function() {
		if ($("#phone2").val() == code2) { // 위에서 저장한값을 비교함
			alert('인증성공')
			$("#phone2").attr("disabled", true);
			$("#phoneAutChk").val("true");
			$("#phoneDoubleChk").val("true");
		} else {
			alert('인증실패')
			$("#phoneAutChk").val("false");
			$("#phoneDoubleChk").val("false");
		}
	});
});