package kr.ac.sunmoon.lrms.manager;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ManagerMapper {
	public Manager selectManager(String manager);		
	public List<Manager> selectManagerAll();
	public void insertManager(Manager manager);	
	public void deleteManager(String managerId);	
	public void updateManager(Manager manager);		
	public int loginChecker(String managerId, String password);
	public int duplicationCheck(String managerId);
}
