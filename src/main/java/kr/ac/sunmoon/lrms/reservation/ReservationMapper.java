package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {
	public List<Reservation> selectAllReservation(Reservation reservation);
	public Reservation selectReservation(int no);
	public int selectResevationTime(Reservation reservation);	
	public int selectReservationNo();	
	public void insertReservation(Reservation reservation);	
	public void updateReservation(Reservation reservation);	
	public void deleteReservation(int no);

}
