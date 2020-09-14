package kr.ac.sunmoon.lrms.photo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PhotoMapper {
	public Photo selectPhoto(String No);
	public void insertPhoto(Photo photo);
	public void updatePhoto(Photo photo);
	public void deletePhoto(String No);
}
