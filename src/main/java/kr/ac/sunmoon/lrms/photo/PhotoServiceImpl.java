package kr.ac.sunmoon.lrms.photo;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhotoServiceImpl implements PhotoService {
	@Autowired
	PhotoMapper photoMapper;

	@Override
	public void uploadPhoto(int no, HttpServletResponse response) {
		byte[] buffer = new byte[1024];

		BufferedInputStream bis = null;
		ByteArrayOutputStream bao = null;
		OutputStream out = null;

		Photo photo = this.photoMapper.selectPhoto("PHOTO"+ no);
		try {
			File originalFile = new File(photo.getPath() + photo.getPhysicalFileName() + "_" + photo.getLogicalFileName());

			if (originalFile.exists()) {
				bis = new BufferedInputStream(new FileInputStream(originalFile));
				bao = new ByteArrayOutputStream();
			}

			int readLength = 0;
			while ((readLength = bis.read(buffer)) != -1) {
				bao.write(buffer, 0, readLength);
			}

			byte[] imgebuf = null;
			imgebuf = bao.toByteArray();

			int length = imgebuf.length;

			out = response.getOutputStream();
			out.write(imgebuf, 0, length);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				out.close();
				bao.close();
				bis.close();
			} catch (Exception e) {
			}
		}
	}

}
