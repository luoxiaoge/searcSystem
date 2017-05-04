package com.roymark.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.HomePageMapper;
import com.roymark.pojo.HomePage;
import com.roymark.service.IHomePageService;

@Service("IHomePageService")
public class HomePageServiceImpl implements IHomePageService {
    @Autowired
    private HomePageMapper mapper;

	public boolean insertPhoto(String address) {
		
		return mapper.insertPhoto(address);
	}

	public ArrayList<HomePage> findAllPhoto() {
		
		return mapper.findAllPhoto();
	}

	public boolean deletePhoto(String address) {
		
		return mapper.deletePhoto(address);
	}

	public HomePage findPhotoById(Integer id) {
		
		return mapper.findPhotoById(id);
	}
    
	

}
