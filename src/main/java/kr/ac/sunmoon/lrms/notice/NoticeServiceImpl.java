package kr.ac.sunmoon.lrms.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	NoticeMapper noticeMapper;
	@Override
	public List<Notice> inquiryNotice() {
		List<Notice> notices = noticeMapper.selectNoticeAll();
		noticeMapper.updateNotice();
		
		return notices;
	}
	
	@Override
	public int selectNoticeCount() {
		int count = noticeMapper.selectNoticeCount();
		
		return count;
	}

}
