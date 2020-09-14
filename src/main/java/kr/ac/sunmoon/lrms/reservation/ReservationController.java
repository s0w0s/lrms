package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import kr.ac.sunmoon.lrms.lab.Lab;
import kr.ac.sunmoon.lrms.lab.LabServiceImpl;
import kr.ac.sunmoon.lrms.manager.Manager;

@RestController
public class ReservationController {
	@Autowired
	ReservationServiceImpl reservationImpl;
	@Autowired
	LabServiceImpl labServiceImpl;

	
	@ResponseBody
	@PostMapping(value = "/searchreservation")
	public List<Reservation> doReservationlistSearch(Reservation reservation) {	
		List<Reservation> reservations = reservationImpl.listReservation(reservation);
		
		return reservations;
	}
	
	@GetMapping(value = "/reservation")
	public ModelAndView doReservationListInquiry() {
		ModelAndView modelAndView = new ModelAndView("/reservation/listview");
		
		List<Lab> labs = labServiceImpl.listLab();
		modelAndView.addObject("labs", labs);
		
		return modelAndView;
	}

	@GetMapping(value = "/reservation/{no}")
	public ModelAndView doReservationInquiry(@PathVariable("no") int no) {
		
		ModelAndView modelAndView = new ModelAndView("/reservation/inquiryview");
		Reservation reservation = reservationImpl.inquiryReservation(no);
		
		if(reservation == null) {
			return new ModelAndView("/404");
		}
				
		modelAndView.addObject("reservation", reservation);
		
		return modelAndView;
	}

	@GetMapping(value = "/reservation/form")
	public ModelAndView doReservationAdd(@RequestParam(required = false) String msg) {
		ModelAndView modelAndView = new ModelAndView("/reservation/addview");
		modelAndView.addObject("msg", msg);
		
		List<Lab> labs = labServiceImpl.listLab();
		modelAndView.addObject("labs", labs);
		
		return modelAndView;
	}

	@PostMapping(value = "/reservation")
	public ModelAndView doReservationAdd(Reservation reservation,  RedirectAttributes redirectAttributes,  HttpSession session) {
		Manager manager = (Manager) session.getAttribute("managerInfo");
		String managerId = manager.getId();

		boolean returnValue = reservationImpl.addReservation(reservation, managerId);
		if (!returnValue) {
			redirectAttributes.addAttribute("msg", "<script>alert('이미 등록된 예약이 존재합니다')</script>");

			return new ModelAndView(new RedirectView("/reservation/form"));
		}
			
		return new ModelAndView(new RedirectView("/reservation"));
	}

	@GetMapping(value = "/reservation/{no}/form")
	public ModelAndView doReservationEdit(@PathVariable("no") int no,@RequestParam(required = false) String msg) {
		ModelAndView modelAndView = new ModelAndView("/reservation/editview");
		modelAndView.addObject("msg", msg);
		Reservation reservation = reservationImpl.inquiryReservation(no);
		
		if(reservation == null) {
			return new ModelAndView("/404");
		}
		
		List<Lab> labs = labServiceImpl.listLab();
		
		modelAndView.addObject("labs", labs);
		modelAndView.addObject("reservation", reservation);

		return modelAndView;
	}

	@PutMapping(value = "/reservation")
	public ModelAndView doReservationEdit(Reservation reservation,RedirectAttributes redirectAttributes, HttpSession session) {
		Manager manager = (Manager)session.getAttribute("managerInfo");
		String managerId = manager.getId();
		
		boolean returnValue = reservationImpl.updateReservation(reservation, managerId);
		if (!returnValue) {
			redirectAttributes.addAttribute("msg", "<script>alert('이미 등록된 예약이 존재합니다')</script>");
			return new ModelAndView(new RedirectView("/reservation/" + reservation.getNo() + "/form"));
		}
		
		return new ModelAndView(new RedirectView("/reservation"));
	}

	@DeleteMapping("/reservation")
	public ModelAndView doReservationCancel(int no) {		
		reservationImpl.cancelReservation(no);

		return new ModelAndView(new RedirectView("/reservation"));
	}
}
