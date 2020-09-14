package kr.ac.sunmoon.lrms.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.sunmoon.lrms.reservation.Reservation;

@RestController
public class NoticeController {
	@Autowired
	NoticeServiceImpl noticeServiceImple;
	
	@ResponseBody
	@PostMapping(value = "/notice")
	public List<Notice> doNoticeInquiry(){
		List<Notice> notices = noticeServiceImple.inquiryNotice();
			
		return notices;
	}
	
	@ResponseBody
	@PostMapping(value = "/noticecount")
	public int doNoticeCountSelect() {	
		int count = noticeServiceImple.selectNoticeCount();
		
		return count;
	}
	

	
}