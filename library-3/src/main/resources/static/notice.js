//noticeboard_wirte
function notice_w_Check() {
	var title = document.getElementsByName('title');
	var content = document.getElementsByName('content');
	var checkbox = document.getElementById('agree1');
	if (title[0].value == "") {
		alert('제목을 입력해주세요.');
	} else if (content[0].value == "") {
		alert('내용은 필수 사항입니다.');
	} else if (!checkbox.checked) {
		alert('약관에 동의해주세요.');
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}

//noticeboard_Content
function deleteCheck() {
	result = confirm('진짜로 삭제하겠습니까?');
	if (result == true) {
		var no = document.getElementById("board_no").value
		location.href = 'ContentDeleteProc3?no=' + no
	}
}

//noticeboard_Modify
function noticemf_Check() {
	var title = document.getElementsByName('title');
	var content = document.getElementsByName('content');
	var checkbox = document.getElementById('agree1');
	if (title[0].value == "") {
		alert('제목을 입력해주세요.');
	} else if (content[0].value == "") {
		alert('내용은 필수 사항입니다.');
	} else if (!checkbox.checked) {
		alert('약관에 동의해주세요.');
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}

function deleteCheck2(no) {
	result = confirm('진짜로 삭제하겠습니까?');
	if (result == true) {
		location.href = 'ContentDeleteProc?no=' + no
	}
}
