package com.kg.library.reservation;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	@Autowired private ReservationMapper mapper;

	public List<String> getReservations(ReservationDTO dto) {
		return mapper.getReservations(dto);
		
	}

	public List<Integer> getReservations2(ReservationDTO dto) {
		return mapper.getReservations2(dto);
	}

	public int insert(ReservationDTO dto) {
		List<Integer> list = mapper.getReservations2(dto);
		for(int i = 0; i<dto.getDuration(); i++) {
			if(list.contains(dto.getReservation_time()+i) || dto.getReservation_time()+i > 20 ) {
				return 1;
			}
		}
		List<Integer> list2 = mapper.getReservations3(dto);
		if(list2!=null) {
			if(list2.size()!=0) {
				return 2;
			}
		}
		
		int iteration = dto.getDuration();
		for(int i = 0; i<iteration; i++) {
			mapper.insert(dto);
			dto.setDuration(dto.getDuration()-1);
			dto.setReservation_time(dto.getReservation_time()+1);
		}
		return 0;
	}

	public List<ReservationDTO> requestMyReservation(String sessionId) {
		LocalDate date = LocalDate.now();
		List<ReservationDTO> now = new ArrayList<>();
		List<ReservationDTO> list = mapper.getReservations4(sessionId);

	    System.out.println("my4");

		for(ReservationDTO reservation: list) {
			if(!date.isAfter(LocalDate.parse(reservation.getReservation_date()))) now.add(reservation);
		}
		return now;
	}

	public void requestCancel(ReservationDTO dto) {
		mapper.cancel(dto);
	}
	
	public List<ReservationDTO> requestPreReservation(String sessionId) {
		LocalDate date = LocalDate.now();
		List<ReservationDTO> pre = new ArrayList<>();
		List<ReservationDTO> list =  mapper.getReservations4(sessionId);
	    for(ReservationDTO reservation: list) {
			if(date.isAfter(LocalDate.parse(reservation.getReservation_date()))) pre.add(reservation);
		}
		return pre;
	}
}
