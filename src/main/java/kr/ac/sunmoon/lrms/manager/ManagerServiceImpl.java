package kr.ac.sunmoon.lrms.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	ManagerMapper managerMapper;
	@Autowired
	ManagerController managerController;
	
	@Override
	public List<Manager> listManager() {
		return managerMapper.selectManagerAll();
	}
	
	@Override
	public void addManager(Manager manager) {
		managerMapper.insertManager(manager);
	}

	@Override
	public Manager inquiryManager(String managerId) {
		Manager managerInfo = managerMapper.selectManager(managerId);
		return managerInfo;
	}

	@Override
	public void editManager(Manager manager) {
		managerMapper.updateManager(manager);
	}
	@Override
	public void deleteManager(String managerId) {
		managerMapper.deleteManager(managerId);
		
	}

	@Override
	public boolean isDuplication(String managerId) {
		int duplicationCount = managerMapper.duplicationCheck(managerId);
		if(managerId == null) {
			return false;
		}
		
		if("".equals(managerId)) {
			return false;
		}
		
		if(duplicationCount == 1) {
			return false;
		} else {
			return true;			
		}
	}



}
