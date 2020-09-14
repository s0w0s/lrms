package kr.ac.sunmoon.lrms.common;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import kr.ac.sunmoon.lrms.manager.Manager;
@RestController
public class CommonController {
    @Autowired
    CommonServiceImpl commonServiceImpl;
    
    @GetMapping(value="/common/login")
    public ModelAndView login(HttpSession session) {
        ModelAndView mav =null;
        mav = new ModelAndView("/common/login");
       
        return mav;
    }
    
    @PostMapping(value="/common/login")
    public ModelAndView login(Manager manager, HttpSession session) {
        boolean isLoginCheck = commonServiceImpl.login(manager, session);
        ModelAndView mav = null;
        
        if(isLoginCheck == true) {
            mav = new ModelAndView(new RedirectView("/reservation"));            
            mav.addObject("managerInfo", session);
        }
        
        if(isLoginCheck == false){
            mav = new ModelAndView("/common/login");
            mav.addObject("loginCheck", "false");
        }
        
        return mav;
    }
    @GetMapping(value="/common/logout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        ModelAndView mav = new ModelAndView(new RedirectView("/common/login"));
        
        return mav;
    }
}
