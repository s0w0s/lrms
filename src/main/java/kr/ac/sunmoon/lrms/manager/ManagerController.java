package kr.ac.sunmoon.lrms.manager;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class ManagerController {
	@Autowired
	ManagerServiceImpl managerServiceImpl;

	@GetMapping(value = "/manager")
	public ModelAndView doManagerList(HttpSession session) {
		ModelAndView mav = new ModelAndView("/manager/listview");
		List<Manager> managers = managerServiceImpl.listManager();
		mav.addObject("managers", managers);
		
		return mav;
	}
	
	@GetMapping(value="/manager/form")
	public ModelAndView doManagerAdd(){
		ModelAndView mav = new ModelAndView("/manager/addview");
		
		return mav;
	}
	
	@PostMapping(value="/manager")
	public ModelAndView doManagerAdd(Manager manager){
		ModelAndView mav = new ModelAndView(new RedirectView("manager"));
		managerServiceImpl.addManager(manager);
		
		return mav;
	}

	@GetMapping("/manager/{managerId}/form")
	public ModelAndView doManagerEdit(@PathVariable String managerId){
		ModelAndView mav = new ModelAndView("/manager/editview");
		Manager managerInfo = managerServiceImpl.inquiryManager(managerId);
		if(managerInfo == null) {
			return new ModelAndView("/404");
		}
		
		mav.addObject("managerInfo", managerInfo);
		
		return mav;
	}
	
	@PutMapping("/manager/{id}")
	public ModelAndView doManagerEdit(Manager manager){
		ModelAndView mav = new ModelAndView(new RedirectView("/manager"));
		managerServiceImpl.editManager(manager);
		
		return mav;
	}
	
	@DeleteMapping("/manager/{id}")
	public ModelAndView doManagerDelete(@PathVariable String id){
		ModelAndView mav = new ModelAndView(new RedirectView("/manager"));
		managerServiceImpl.deleteManager(id);
		
		return mav;
	}
	
	@PostMapping("/duplicationCheck")
	public boolean doDuplicationCheck(String id){
		System.out.println(id.equals(""));
		boolean isDuplication = managerServiceImpl.isDuplication(id);
		
		return isDuplication;
	}
}
