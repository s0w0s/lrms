package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface ReservationService {
	public List<Reservation> listReservation(Reservation reservation);
	public Reservation inquiryReservation(int no);
	public boolean addReservation(Reservation reservation, String managerId);
	public void cancelReservation(int no);
	public boolean updateReservation(Reservation reservation, String managerId);

}
