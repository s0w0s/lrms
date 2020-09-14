package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sunmoon.lrms.manager.Manager;
import kr.ac.sunmoon.lrms.notice.Notice;
import kr.ac.sunmoon.lrms.notice.NoticeMapper;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationMapper reservationMapper;
	@Autowired
	NoticeMapper noticeMapper;

	@Override
	public List<Reservation> listReservation(Reservation reservation) {

		return reservationMapper.selectAllReservation(reservation);
	}

	@Override
	public Reservation inquiryReservation(int no) {

		return reservationMapper.selectReservation(no);
	}

	@Override
	public boolean addReservation(Reservation reservation, String managerId) {
		boolean isResult = true;

		reservation.setManagerId(managerId);

		String startDate;
		String expiryDate;

		startDate = reservation.getStartcalender() + reservation.getStartTime() + reservation.getStartMinute();
		startDate = startDate.replaceAll("-", "");
		reservation.setStartDate(startDate);

		expiryDate = reservation.getEndcalender() + reservation.getEndTime() + reservation.getEndMinute();
		expiryDate = expiryDate.replaceAll("-", "");
		reservation.setExpiryDate(expiryDate);

		int count;
		count = reservationMapper.selectResevationTime(reservation);
		
		if (count == 0) {
			reservationMapper.insertReservation(reservation);

			int no = reservationMapper.selectReservationNo();
			reservation.setNo(no);
				
			reservation.setState("A");

			noticeMapper.insertNotice(reservation);
		} else {
			isResult = false;
		}

		return isResult;
	}
	
	@Override
	public boolean updateReservation(Reservation reservation,String managerId) {
		boolean isResult = true;
		String startDate;
		String expiryDate;

		startDate = reservation.getStartcalender() + reservation.getStartTime() + reservation.getStartMinute();
		startDate = startDate.replaceAll("-", "");
		reservation.setStartDate(startDate);

		expiryDate = reservation.getEndcalender() + reservation.getEndTime() + reservation.getEndMinute();
		expiryDate = expiryDate.replaceAll("-", "");
		reservation.setExpiryDate(expiryDate);
	
		reservation.setManagerId(managerId);

		int count;
		count = reservationMapper.selectResevationTime(reservation);

		if (count == 0) {
			reservationMapper.updateReservation(reservation);			
				
			reservation.setState("A");				
			noticeMapper.insertNotice(reservation);
		} else {
				isResult = false;
		}

		return isResult;
	} 
	
	@Override
	public void cancelReservation(int no) {
		reservationMapper.deleteReservation(no);
		Reservation reservation = reservationMapper.selectReservation(no);

		noticeMapper.insertNotice(reservation);

	}

}
