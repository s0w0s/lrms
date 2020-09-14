package kr.ac.sunmoon.lrms.lab;

import java.io.File;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.sunmoon.lrms.photo.Photo;
import kr.ac.sunmoon.lrms.photo.PhotoMapper;
import kr.ac.sunmoon.lrms.reservation.Reservation;
import kr.ac.sunmoon.lrms.reservation.ReservationMapper;

@Service
public class LabServiceImpl implements LabService {
	@Autowired
	private LabMapper labMapper;

	@Autowired
	private PhotoMapper photoMapper;
	
	@Autowired
	private ReservationMapper reservationMapper;

	@Override
	public List<Lab> listLab() {
		List<Lab> list = this.labMapper.selectLabAll();

		return list;
	}

	@Override
	public Lab inquiryLab(int labNo) {
		Lab lab = this.labMapper.selectLab(labNo);

		Photo photo = this.photoMapper.selectPhoto("PHOTO" + labNo);
		if (photo != null) {
			lab.setPhotoNo(photo.getNo());
			lab.setPath(photo.getPath());
			lab.setPhysicalFileName(photo.getPhysicalFileName());
			lab.setLogicalFileName(photo.getLogicalFileName());
		}

		return lab;
	}

	@Override
	public void addLab(Lab lab, MultipartFile multipartFile) {
		Photo photo = null;

		Lab oldLab = this.labMapper.selectLab(lab.getNo());
		if (oldLab == null) {
			this.labMapper.insertLab(lab);

			if ("".equals(multipartFile.getOriginalFilename()) == false) {
				String[] slice = multipartFile.getContentType().split("/");

				if ("image".equals(slice[0]) == true) {
					photo = this.insertPhoto(lab, multipartFile);

					boolean isFile = this.checkFileExistence(photo.getPath() + photo.getPhysicalFileName() + "_" + photo.getLogicalFileName());
					if (isFile == true) {
						this.photoMapper.insertPhoto(photo);
					}
				}
			}
			
		} else if ("C".equals(oldLab.getState()) == true) {
			this.labMapper.updateLab(lab);

			if ("".equals(multipartFile.getOriginalFilename()) == false) {
				String[] slice = multipartFile.getContentType().split("/");

				if ("image".equals(slice[0]) == true) {
					photo = this.insertPhoto(lab, multipartFile);

					boolean ischeckFile = this.checkFileExistence(photo.getPath() + photo.getPhysicalFileName() + "_" + photo.getLogicalFileName());
					if (ischeckFile == true) {
						this.photoMapper.insertPhoto(photo);
					}
				}
			}
		}
	}


	@Override
	public void editLab(Lab lab, MultipartFile multipartFile) {
		Photo photo = null;
		Photo oldPhoto = null;

		this.labMapper.updateLab(lab);
		try {
			if ("".equals(multipartFile.getOriginalFilename()) == false) {
				String[] slice = multipartFile.getContentType().split("/");
				if ("image".equals(slice[0]) == true) {
					photo = this.insertPhoto(lab, multipartFile);

					boolean isCheckFile = this.checkFileExistence(photo.getPath() + photo.getPhysicalFileName() + "_" + photo.getLogicalFileName());
					if (isCheckFile) {
						if (null != (oldPhoto = this.photoMapper.selectPhoto("PHOTO" + lab.getNo()))) {
							this.photoMapper.updatePhoto(photo);
							
							File deleteFile = new File(oldPhoto.getPath() + oldPhoto.getPhysicalFileName() + "_" + oldPhoto.getLogicalFileName());
							deleteFile.delete();
						} else {
							this.photoMapper.insertPhoto(photo);
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteLab(int labNo) {
		Photo photo = null;

		Lab lab = this.labMapper.selectLab(labNo);
		try {
			if (lab != null) {
				this.labMapper.deleteLab(labNo);
				
				if ((photo = this.photoMapper.selectPhoto("PHOTO" + lab.getNo())) != null) {
					this.photoMapper.deletePhoto("PHOTO" + lab.getNo());

					File deleteFile = new File(photo.getPath() + photo.getPhysicalFileName() + "_" + photo.getLogicalFileName());
					deleteFile.delete();
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		} 
	}

	// 사진 생성
	private Photo insertPhoto(Lab lab, MultipartFile multipartFile) {
		Photo photo = new Photo();

		String logicName = multipartFile.getOriginalFilename();
		String phsicalName = String.valueOf(System.nanoTime());

		String path = "C:\\Temp\\";
		String savePath = path + phsicalName + "_" + logicName;

		this.createDirectory(path); 

		photo.setNo("PHOTO" + lab.getNo());
		photo.setLabNo(lab.getNo());
		photo.setPath(path);
		photo.setLogicalFileName(logicName);
		photo.setPhysicalFileName(phsicalName);

		try {
			multipartFile.transferTo(new File(savePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return photo;
	}

	private void createDirectory(String path) {
		File Folder = new File(path);
		if (!Folder.exists()) {
			try {
				Folder.mkdir();
			} catch (Exception e) {
				e.getStackTrace();
			}
		}
	}

	private boolean checkFileExistence(String path) {
		File File = new File(path);
		if (File.isFile()) {
			return true;
		} else {
			return false;
		}
	}
}
