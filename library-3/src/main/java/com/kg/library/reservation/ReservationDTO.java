package com.kg.library.reservation;

/*
create table reservation(
reservation_num number primary key,
room_num varchar2(10),
reservation_date varchar2(20),
reservation_time number,
member varchar2(30),
duration number);
create sequence reservation_seq;
*/

public class ReservationDTO {
	private String room_num;
	private String reservation_date;
	private int reservation_time;
	private String member;
	private int duration;
	public String getRoom_num() {
		return room_num;
	}
	public void setRoom_num(String room_num) {
		this.room_num = room_num;
	}
	public String getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}
	public int getReservation_time() {
		return reservation_time;
	}
	public void setReservation_time(int reservation_time) {
		this.reservation_time = reservation_time;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
}
