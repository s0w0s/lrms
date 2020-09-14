package kr.ac.sunmoon.lrms.photo;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PhotoController {
	@Autowired
	PhotoService photoService;
	
	/* 사진 불러오기 */
	@RequestMapping(value = "/photo/image/{no}")
	public void getImage(@PathVariable int no, HttpServletResponse response) {		
		this.photoService.uploadPhoto(no, response);
	}
	
}
