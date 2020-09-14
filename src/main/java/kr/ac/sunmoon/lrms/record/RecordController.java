package kr.ac.sunmoon.lrms.record;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.sunmoon.lrms.lab.Lab;
import kr.ac.sunmoon.lrms.lab.LabServiceImpl;
import kr.ac.sunmoon.lrms.reservation.Reservation;

@RestController
public class RecordController {
	@Autowired
	RecordService recordService;
	
	@Autowired
	LabServiceImpl labServiceImpl;

	
	@ResponseBody
	@PostMapping(value = "/record")
	public List<Reservation> dosearchRecord(Reservation reservation) {
		
		List<Reservation> reservations = recordService.inquiryRecord(reservation);
		return reservations;
	}
	
	@GetMapping(value = "/record")
	public ModelAndView doRecordInquiry() {
		ModelAndView modelAndView = new ModelAndView("/record/listview");
		List<Lab> labs = labServiceImpl.listLab();
		
		modelAndView.addObject("labs", labs);
		
		return modelAndView;
	}
}
