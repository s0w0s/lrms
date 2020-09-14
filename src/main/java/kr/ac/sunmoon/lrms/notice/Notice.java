package kr.ac.sunmoon.lrms.notice;

public class Notice {
	private int noticeNo;
	private int reservationNo;
	private int labNo;
	private String checkState;
	private String registrationDate;
	private String name;
	private String reservationState;
	private String startDate;
	private String expiryDate;
	
	public Notice() {
		
	}
	
	public Notice(int noticeNo, int reservationNo, int labNo, String checkState, String registrationDate, String name,
			String reservationState, String startDate, String expiryDate) {
		this.noticeNo = noticeNo;
		this.reservationNo = reservationNo;
		this.labNo = labNo;
		this.checkState = checkState;
		this.registrationDate = registrationDate;
		this.name = name;
		this.reservationState = reservationState;
		this.startDate = startDate;
		this.expiryDate = expiryDate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public int getLabNo() {
		return labNo;
	}

	public void setLabNo(int labNo) {
		this.labNo = labNo;
	}

	public String getCheckState() {
		return checkState;
	}

	public void setCheckState(String checkState) {
		this.checkState = checkState;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getReservationState() {
		return reservationState;
	}

	public void setReservationState(String reservationState) {
		this.reservationState = reservationState;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	
	
}
