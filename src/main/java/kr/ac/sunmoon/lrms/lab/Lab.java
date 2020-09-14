package kr.ac.sunmoon.lrms.lab;

import java.io.Serializable;

public class Lab implements Serializable{
	private int no;
	private int acceptablePerson;
	private int availableEquipNo;
	private String computerSpec;
	private String usePerpose;
	private String state;
	private String photoNo;
	private String path;
	private String physicalFileName;
	private String logicalFileName;

	public Lab() {

	}

	public Lab(int no, int acceptablePerson, int availableEquipNo, String computerSpec, String usePerpose, String state,
			String photoNo, String path, String physicalFileName, String logicalFileName) {
		this.no = no;
		this.acceptablePerson = acceptablePerson;
		this.availableEquipNo = availableEquipNo;
		this.computerSpec = computerSpec;
		this.usePerpose = usePerpose;
		this.state = state;
		this.photoNo = photoNo;
		this.path = path;
		this.physicalFileName = physicalFileName;
		this.logicalFileName = logicalFileName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getAcceptablePerson() {
		return acceptablePerson;
	}

	public void setAcceptablePerson(int acceptablePerson) {
		this.acceptablePerson = acceptablePerson;
	}

	public int getAvailableEquipNo() {
		return availableEquipNo;
	}

	public void setAvailableEquipNo(int availableEquipNo) {
		this.availableEquipNo = availableEquipNo;
	}

	public String getComputerSpec() {
		return computerSpec;
	}

	public void setComputerSpec(String computerSpec) {
		this.computerSpec = computerSpec;
	}

	public String getUsePerpose() {
		return usePerpose;
	}

	public void setUsePerpose(String usePerpose) {
		this.usePerpose = usePerpose;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPhotoNo() {
		return photoNo;
	}

	public void setPhotoNo(String photoNo) {
		this.photoNo = photoNo;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getPhysicalFileName() {
		return physicalFileName;
	}

	public void setPhysicalFileName(String physicalFileName) {
		this.physicalFileName = physicalFileName;
	}

	public String getLogicalFileName() {
		return logicalFileName;
	}

	public void setLogicalFileName(String logicalFileName) {
		this.logicalFileName = logicalFileName;
	}
}
