package kr.ac.sunmoon.lrms.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.sunmoon.lrms.reservation.Reservation;

@Mapper
public interface NoticeMapper {
	public List<Notice> selectNoticeAll();
	public void insertNotice(Reservation reservation);
	public void updateNotice();
	public int selectNoticeCount();

}
