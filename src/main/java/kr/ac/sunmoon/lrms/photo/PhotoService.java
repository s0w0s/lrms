package kr.ac.sunmoon.lrms.photo;

import javax.servlet.http.HttpServletResponse;

public interface PhotoService {
	void uploadPhoto(int no, HttpServletResponse response);
}
