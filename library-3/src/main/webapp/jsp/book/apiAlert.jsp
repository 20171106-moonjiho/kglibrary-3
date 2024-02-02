<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function apimessageAlert(apimessage) {

		if (apimessage === 'none') {
			alert('알수 없는 오류 입니다. 관리자를 호출해주세요');
			window.location.href = 'apiBookRegist';
		} else if (apimessage === 'search') {
			alert('등록되었습니다.');
			window.location.href = 'apiBookRegist';
		} else {
			alert('검색값이 없습니다.');
			window.location.href = 'apiBookRegist';
		}
	}
</script>
<title>Alert</title>
</head>
<body>
	<script type="text/javascript">
		apimessageAlert('${apimessage}');
	</script>
</body>
</html>