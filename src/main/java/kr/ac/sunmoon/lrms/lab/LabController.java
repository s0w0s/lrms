package kr.ac.sunmoon.lrms.lab;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class LabController {
	@Autowired
	private LabService labService;

	@RequestMapping(value = "/lab", method = RequestMethod.GET)
	public ModelAndView doLabList() {
		ModelAndView modelAndView = new ModelAndView("/lab/listview");

		List<Lab> listLab = this.labService.listLab();
		modelAndView.addObject("listLab", listLab);

		return modelAndView;
	}

	@RequestMapping(value = "/lab/{no}", method = RequestMethod.GET)
	public ModelAndView doLabInquiry(@PathVariable int no) {
		ModelAndView modelAndView = new ModelAndView("/lab/inquiryview");

		Lab lab = this.labService.inquiryLab(no);
		if (lab == null) { 
			return new ModelAndView("/404");
		} else if ("C".equals(lab.getState())) {
			return new ModelAndView("/404");
		}

		modelAndView.addObject("lab", lab);
		return modelAndView;
	}

	@RequestMapping(value = "/lab/form", method = RequestMethod.GET)
	public ModelAndView doLabAdd() {
		return new ModelAndView("/lab/addview");
	}

	@RequestMapping(value = "/lab", method = RequestMethod.POST)
	public ModelAndView doLabAdd(Lab lab, MultipartFile multipartFile) {
		this.labService.addLab(lab, multipartFile);
		return new ModelAndView(new RedirectView("/lab"));
	}

	@RequestMapping(value = "/lab/{no}/form", method = RequestMethod.GET)
	public ModelAndView doLabEdit(@PathVariable int no) {
		ModelAndView modelAndView = new ModelAndView("/lab/editview");

		Lab lab = this.labService.inquiryLab(no);
		if (lab == null) { 
			return new ModelAndView("/404");
		} else if ("C".equals(lab.getState())) {
			return new ModelAndView("/404");
		}

		modelAndView.addObject("lab", lab);
		return modelAndView;
	}

	@RequestMapping(value = "/lab", method = RequestMethod.PUT)
	public ModelAndView doLabEdit(Lab lab, MultipartFile multipartFile) {
		ModelAndView modelAndView = new ModelAndView(new RedirectView("/lab"));
	
		this.labService.editLab(lab, multipartFile);
		return modelAndView;
	}

	@RequestMapping(value = "/lab/{no}", method = RequestMethod.DELETE)
	public ModelAndView doLabDelete(@PathVariable int no) {
		this.labService.deleteLab(no);
		
		return new ModelAndView(new RedirectView("/lab"));
	}

	@RequestMapping(value = "/lab/check", method = RequestMethod.POST)
	public int doLabNoCheck(HttpServletRequest request) {
		int result = 0;
		try {
			int labNo = Integer.valueOf(request.getParameter("no"));
			Lab lab = this.labService.inquiryLab(labNo);

			if (lab != null) {
				if ("C".equals(lab.getState())) {
					result = 0;
				} else if (lab.getNo() == labNo) {
					result = 1;
				}
			}

		} catch (Exception e) { 
			result = 1;
		}
		
		return result;
	}
}