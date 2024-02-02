function extendCheck(userId, no, rentaldate, borrowdate) {
    if (userId == "null" || userId.trim() == "") {
        alert("로그인이 필요합니다.");
        location.href = "login";
    } else {
        var rentalDateObj = new Date(rentaldate);
        var borrowDateObj = new Date(borrowdate);
        
        var timeDifference = rentalDateObj - borrowDateObj;

        var daysDifference = timeDifference / (1000 * 3600 * 24);

        if (daysDifference > 13) {
            alert('연장이 불가능합니다.(대출 기한: 2주)');
        } else {
            result = confirm('연장하시겠습니까?');
            if (result == true) {
                location.href = "borrowDateExtend?no=" + no;
            }
        }
    }
}

function returnCheck(userId, no){
    if (userId == "null" || userId.trim() == "") {
        alert("로그인이 필요합니다.");
        location.href = "login";
    }
    else{
	result = confirm('반납 하시겠습니까?');
	if(result == true){
		location.href="returnProc2?no=" + no
	}
    }
}