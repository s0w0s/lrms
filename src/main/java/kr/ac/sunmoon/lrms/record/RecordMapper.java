package kr.ac.sunmoon.lrms.record;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.sunmoon.lrms.reservation.Reservation;

@Mapper
public interface RecordMapper {
	public List<Reservation> selectRecordAll(Reservation record);
}
