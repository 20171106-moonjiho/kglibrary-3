$(function() {
    var code2; // 전역 변수로 선언

    $("#nameTelCheck").click(function() {
        var name = $("#name").val();
        var tel = $("#tel").val();
        
        if (name == null || name == "") {
            alert('이름을 입력하세요.');
            return;
        }
        if (tel == null || tel == "") {
            alert('번호를 입력하세요.');
            return;
        }
        // AJAX 요청
        $.ajax({
            type: "POST",
            url: "mobileCheck2", // 서버의 컨트롤러 매핑 주소
            data: { name: name, tel: tel },
            success: function (result) {
                // 서버에서 받은 결과(result)를 처리
                if(result === "error"){
					alert("인증 실패. 이름 또는 전화번호가 일치하지 않습니다.");
				}
                else {
                    // 일치하는 사용자 정보가 있을 때의 동작
                    $("#phoneAutChk").val("true");
                    code2 = result; // 성공하면 데이터 저장
                    alert("인증 번호 전송!");
                }
            },
            error: function () {
                // AJAX 요청 실패 시 동작
                alert("서버 오류");
            }
        });
    });

    $("#findId").click(function() {
        if ($("#phone2").val() == code2) { // 위에서 저장한 값을 비교함
            alert('인증 성공!');
            $("#phone2").attr("disabled", true);
            $("#phoneAutChk").val("true");
            $("#phoneDoubleChk").val("true");
        } else {
            alert('인증 실패');
            $("#phoneAutChk").val("false");
            $("#phoneDoubleChk").val("false");
        }
    });
    
    $("#check").click(function() {
        if ($("#phoneDoubleChk").val() == "true") { // 위에서 저장한 값을 비교함
            document.getElementById('f').submit();
        } else {
			alert("인증하세요.")
        }
    });
});

$(function(){
	$("#idTelCheck").click(function() {
        var id = $("#id").val();
        var tel = $("#tel").val();
        
        if (id == null || id == "") {
            alert('아이디를 입력하세요.');
            return;
        }
        if (tel == null || tel == "") {
            alert('번호를 입력하세요.');
            return;
        }
        // AJAX 요청
        $.ajax({
            type: "POST",
            url: "mobileCheck3", // 서버의 컨트롤러 매핑 주소
            data: { id: id, tel: tel },
            success: function (result) {
                // 서버에서 받은 결과(result)를 처리
                if(result === "error"){
					alert("인증 실패. 이름 또는 전화번호가 일치하지 않습니다.");
				}
                else {
                    // 일치하는 사용자 정보가 있을 때의 동작
                    $("#phoneAutChk").val("true");
                    code2 = result; // 성공하면 데이터 저장
                    alert("인증 번호 전송!");
                }
            },
            error: function () {
                // AJAX 요청 실패 시 동작
                alert("서버 오류");
            }
        });
    });
    
    $("#findPw").click(function() {
        if ($("#phone2").val() == code2) { // 위에서 저장한 값을 비교함
            alert('인증 성공!');
            $("#phone2").attr("disabled", true);
            $("#phoneAutChk").val("true");
            $("#phoneDoubleChk").val("true");
        } else {
            alert('인증 실패');
            $("#phoneAutChk").val("false");
            $("#phoneDoubleChk").val("false");
        }
    });
    
    $("#check2").click(function() {
        if ($("#phoneDoubleChk").val() == "true") { // 위에서 저장한 값을 비교함
            document.getElementById('f').submit();
        } else {
			alert("인증하세요.")
        }
    });
});