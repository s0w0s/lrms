package kr.ac.sunmoon.lrms.record;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sunmoon.lrms.reservation.Reservation;

@Service
public class RecordService {
	@Autowired
	RecordMapper recordMapper;
	
	public List<Reservation> inquiryRecord(Reservation reservation){
		
		return 	recordMapper.selectRecordAll(reservation);
	}
	
}
