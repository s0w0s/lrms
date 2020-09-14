package kr.ac.sunmoon.lrms.common;

import javax.servlet.http.HttpSession;

import kr.ac.sunmoon.lrms.manager.Manager;

public interface CommonService {
	public boolean login(Manager manager, HttpSession session);
	
	public void logout();	

}