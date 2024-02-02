// 기본 구성
document.addEventListener('DOMContentLoaded', function() {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView: 'dayGridMonth'
	});
	calendar.render();
});

// db 연동
$(function() {
	var calendarEl = document.getElementById('calendar'); // calendarEl 변수를 이 위치로 이동
	var request = $.ajax({
		url: "/production/monthPlan",
		method: "GET",
		dataType: "json"
	});

	request.done(function(data) {
		console.log(data);
		var events = data;
		// FullCalendar 이벤트로 변환
		
		
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView: 'dayGridMonth',
			headerToolbar: {
				left: 'prev,next today',
				center: 'title',
				right: 'dayGridMonth'
			},
			events: events
		});

		calendar.render();
	});

	request.fail(function(jqXHR, textStatus) {
		alert("Request failed: " + textStatus);
	});
});

        $(function() {
            $("#openModalBtn").click(function() {
                $("#myModal").fadeIn();
            });

            $("#closeModalBtn").click(function() {
                $("#myModal").fadeOut();
            });
        });
        
		  $(function() {
		    $("#startDate").datepicker({
		        dateFormat: 'yy-mm-dd',
		        onSelect: function(selectedDate) {
		            $("#endDate").datepicker("option", "minDate", selectedDate);
		        }
		    });
		
		    $("#endDate").datepicker({
		        dateFormat: 'yy-mm-dd'
		    });
		});

 
function cal_check() {
    var startDate = document.getElementById('startDate').value;
    var endDate = document.getElementById('endDate').value;
    var events = document.getElementById('events').value;

    if (startDate == "" || endDate == "" || events == "") {
        alert('시작일, 종료일, 그리고 이벤트를 모두 입력해주세요.');
    }else{document.getElementById('f').submit();}
}

