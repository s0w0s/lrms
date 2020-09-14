package kr.ac.sunmoon.lrms.lab;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface LabService {
	public List<Lab> listLab();
	public Lab inquiryLab(int labNo);
	public void addLab(Lab lab, MultipartFile multipartFile);
	public void editLab(Lab lab, MultipartFile multipartFile);	
	public void deleteLab(int labNo);

}
