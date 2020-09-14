package kr.ac.sunmoon.lrms.lab;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LabMapper {
	public List<Lab> selectLabAll();
	public Lab selectLab(int labNo);
	public void insertLab(Lab lab);
	public void updateLab(Lab lab);
	public void deleteLab(int labNo);
}
