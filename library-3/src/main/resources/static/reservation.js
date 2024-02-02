/*$(document).ready(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	$("#startDate").datepicker({
		changeMonth: true,
		changeYear: true,
		nextText: '다음 달',
		prevText: '이전 달',
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dateFormat: "yy-mm-dd",
		minDate: 1,
		maxDate: 14
	});
});*/

function get_cal(year, month) {
	$('input[name=year_t]').val(year);
	$('input[name=month_t]').val(month);
	var allData = {
		"type": 'date',
		"year": $('input[name=year_t]').val(),
		"month": $('input[name=month_t]').val(),
		"day": $('input[name=day_t]').val(),
		"room": $('input[name=room]').val(),
	};
	$.ajax({
		url: "day",
		type: "POST",
		data: JSON.stringify(allData),
		contentType: "application/json; charset=utf-8",
		dataType: "text",
		success: function(data) {
			$('.step_date_contents').html(data);
			var yy = $('.c_year').html();
			var yy_r = yy.replace('년', '');
			$('#year_t').val(yy_r);
			var ym = $('.c_month').html();
			var ym_r = ym.replace('월', '');
			$('#month_t').val(ym_r);

		}
	});
}

function get_time() {
	var allData = {
		"type": 'time',
		"year": $('input[name=year_t]').val(),
		"month": $('input[name=month_t]').val(),
		"day": $('input[name=day_t]').val(),
		"room": $('input[name=room]').val(),
	};
	$.ajax({
		url: "day",
		type: "POST",
		data: JSON.stringify(allData),
		contentType: "application/json; charset=utf-8",
		dataType: "text",
		success: function(data) {
			$('.step_time_ul').html(data);
		}
	});
}

$(document).on('click', '.step_room_ul li a', function() {
	$('input[name=time_t]').val('');
	if ($(this).is(".xx") === true) {
		alert("해당시설은 대여가 불가능합니다.");
	} else {
		$(".step_room_ul li a").removeClass("select-room");
		$(this).addClass("select-room");
		$('#room_t').val($(this).attr("rel"));
		get_time();
	}
});

$(document).on('click', '.step_date_ul li a', function() {
	$('input[name=time_t]').val('');
	if ($(this).is(".xx") === true) {
		alert("해당일은 대여가 불가능합니다.");
	} else {
		$(".step_date_ul li a").removeClass("select-date");
		$(this).addClass("select-date");
		$('#day_t').val($(this).attr("rel"));
		get_time();
	}
});

$(document).on(
	'click',
	'.step_time_ul li a',
	function() {
		if ($(this).is(".xx") === true) {
			alert("해당시간은 대여가 불가능합니다.");
		} else {
			$(this).toggleClass("select-time");
			var arrString = new Array();
			var co = 0;
			var time_se = false;
			$(".step_time_ul li").each(function(index, item) {
				if ($(this).find('a').is(".select-time") === true) {
					arrString[co] = $(this).find('a').attr("rel");
					co++;
					if (co > 1)
						time_se = true;
				}
			});
			if (time_se) {
				if (!$(this).parent("li").next().children("a").is(
					".select-time")
					&& !$(this).parent("li").prev().children(
						"a").is(".select-time")) {
					alert("연속된 회의실만 선택할 수 있습니다.");
					$(this).toggleClass("select-time");
					return;
				}
			}
			var time_t = arrString.join("##");
			$('#time_t').val(time_t);

		}
	});

get_cal("2024", "2");
get_time();

function f_submit() {
	var f = document.form_01_1;
	if (!f.room.value) {
		alert('회의실을 선택해 주세요.');
		return false;
	}
	if (!f.day_t.value) {
		alert('날짜를 선택해 주세요.');
		return false;
	}
	if (!f.time_t.value) {
		alert('시간을 선택해 주세요.');
		return false;
	}
	f.submit();
}