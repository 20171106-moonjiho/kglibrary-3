package com.kg.library.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {

	List<String> getReservations(ReservationDTO dto);

	List<Integer> getReservations2(ReservationDTO dto);
	
	List<Integer> getReservations3(ReservationDTO dto);

	void insert(ReservationDTO dto);

	List<ReservationDTO> getReservations4(String sessionId);

	void cancel(ReservationDTO dto);
}
