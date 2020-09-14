package kr.ac.sunmoon.lrms.manager;

import java.util.List;


public interface ManagerService {
	public List<Manager> listManager();	
	public Manager inquiryManager(String managerId);	
	public void addManager(Manager manager);
	public boolean isDuplication(String managerId);	
	public void editManager(Manager manager);
	public void deleteManager(String managerId);
}
