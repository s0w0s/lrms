package kr.ac.sunmoon.lrms.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.ac.sunmoon.lrms.manager.Manager;
@Component
public class ManagerInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Manager mgr = (Manager) session.getAttribute("managerInfo");
		
		if("M".equals(mgr.getGrade())) {
			response.sendRedirect("/reservation");
			
			return false;
		} else {
			session.setMaxInactiveInterval(10*60);
			
			return HandlerInterceptor.super.preHandle(request, response, handler);
		}
	}

}
