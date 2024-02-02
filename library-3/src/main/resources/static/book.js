function bookCheck() {
	let category = document.getElementById('category');
	let title_info = document.getElementById('title_info');
	let author_info = document.getElementById('author_info');
	let book_count = document.getElementById('book_count');
	if (category.value == "") {
		alert('카테고리는 필수 항목입니다.');
	} else if (title_info.value == "") {
		alert('제목은 필수 항목입니다.');
	} else if (author_info.value == "") {
		alert('저작자는 필수 항목입니다.');
	} else if (book_count.value == "") {
		alert('도서의 갯수는 필수 항목입니다.');
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}

function deleteCheck(no){
	result = confirm('진짜로 삭제하겠습니까?');
	if(result == true){
		location.href="bookDeleteProc?no="+no
	}
}
function rentCheck(userId, no){
    if (userId == "null" || userId.trim() == "") {
        alert("로그인이 필요합니다.");
        location.href = "login";
    }
    else{
		result = confirm('대여 하시겠습니까?');
		if(result == true){
			location.href="rentalProc?no="+no
		}
	}
}
	
function returnCheck(userId, no){
	if (userId == "null" || userId.trim() == "") {
		alert("로그인이 필요합니다.");
		location.href = "login";
	} else {
		result = confirm('반납 하시겠습니까?');
		if (result == true) {
			location.href = "returnProc?no="+no
		}
	}
}


function apiCheck() {
	let search = document.getElementById('search');
	let pageNum = document.getElementById('pageNum');

	if (search.value == "") {
		alert('제목은 필수 항목입니다.');
	} else if (pageNum.value == "") {
		alert('페이지 번호는 필수 항목입니다.');
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}


function bookHopeCheck() {
	let category = document.getElementById('category');
	let title_info = document.getElementById('title_info');
	let author_info = document.getElementById('author_info');

	if (category.value == "") {
		alert('카테고리는 필수 항목입니다.');
	} else if (title_info.value == "") {
		alert('제목은 필수 항목입니다.');
	} else if (author_info.value == "") {
		alert('저작자는 필수 항목입니다.');
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}

function deleteHopeCheck(no){
	result = confirm('진짜로 삭제하겠습니까?');
	if(result == true){
		location.href="bookHopeDeleteProc?no="+no
	}
}	