package kr.ac.sunmoon.lrms.manager;

import java.io.Serializable;

public class Manager implements Serializable{
	private String id;
	private String password;
	private int extensionNumber;
	private String name;
	private String grade;
	private String state;
	private int rownum;
	
	public Manager() {
		
	}
	
	public int getExtensionNumber() {
		return extensionNumber;
	}

	public void setExtensionNumber(int extensionNumber) {
		this.extensionNumber = extensionNumber;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}
