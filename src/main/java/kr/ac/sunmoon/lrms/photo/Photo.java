package kr.ac.sunmoon.lrms.photo;

import java.io.Serializable;

public class Photo implements Serializable{
	private String no;
	private int labNo;
	private String path;
	private String physicalFileName;
	private String logicalFileName;
	
	public Photo() {
		
	}
	
	public Photo(String no, int labNo, String path, String physicalFileName, String logicalFileName) {
		this.no = no;
		this.labNo = labNo;
		this.path = path;
		this.physicalFileName = physicalFileName;
		this.logicalFileName = logicalFileName;
	} 

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public int getLabNo() {
		return labNo;
	}

	public void setLabNo(int labNo) {
		this.labNo = labNo;
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
