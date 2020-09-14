package kr.ac.sunmoon.lrms.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.ac.sunmoon.lrms.manager.Manager;

@Component
public class LrmsInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*30);
		Manager mgr = (Manager) session.getAttribute("managerInfo");
		
		if(session.getAttribute("managerInfo") == null) {
			response.sendRedirect("/common/login");
			return false;
		}
		
		if("C".equals(mgr.getState())) {
			response.sendRedirect("/common/login");
		}
		
		return true;
	}
}
