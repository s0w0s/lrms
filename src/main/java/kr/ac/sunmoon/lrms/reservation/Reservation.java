package kr.ac.sunmoon.lrms.reservation;

import java.io.Serializable;

public class Reservation implements Serializable {

	private int no;
	private int labNo;
	private int rownum;
	private String managerId;
	private String startDate;
	private String expiryDate;
	private String startcalender;
	private String startTime;
	private String startMinute;
	private String endcalender;
	private String endTime;
	private String endMinute;
	private String registrationDate;
	private String note;
	private String state;
	private String pledge;
	private String name;

	public Reservation() {

	}

	public Reservation(int no, int labNo, int rownum, String managerId, String startDate, String expiryDate,
			String startcalender, String startTime, String startMinute, String endcalender, String endTime,
			String endMinute, String registrationDate, String note, String state, String pledge, String name) {

		this.no = no;
		this.labNo = labNo;
		this.rownum = rownum;
		this.managerId = managerId;
		this.startDate = startDate;
		this.expiryDate = expiryDate;
		this.startcalender = startcalender;
		this.startTime = startTime;
		this.startMinute = startMinute;
		this.endcalender = endcalender;
		this.endTime = endTime;
		this.endMinute = endMinute;
		this.registrationDate = registrationDate;
		this.note = note;
		this.state = state;
		this.pledge = pledge;
		this.name = name;
	}

	public String getStartcalender() {
		return startcalender;
	}

	public void setStartcalender(String startcalender) {
		this.startcalender = startcalender;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getStartMinute() {
		return startMinute;
	}

	public void setStartMinute(String startMinute) {
		this.startMinute = startMinute;
	}

	public String getEndcalender() {
		return endcalender;
	}

	public void setEndcalender(String endcalender) {
		this.endcalender = endcalender;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getEndMinute() {
		return endMinute;
	}

	public void setEndMinute(String endMinute) {
		this.endMinute = endMinute;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getLabNo() {
		return labNo;
	}

	public void setLabNo(int labNo) {
		this.labNo = labNo;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
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

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPledge() {
		return pledge;
	}

	public void setPledge(String pledge) {
		this.pledge = pledge;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

}
