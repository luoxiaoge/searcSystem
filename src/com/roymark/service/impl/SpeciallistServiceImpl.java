package com.roymark.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.SpecialistMapper;
import com.roymark.pojo.Specialist;
import com.roymark.service.ISpecialistService;

@Service("ISpecialistService")
public class SpeciallistServiceImpl implements ISpecialistService{
	
	@Autowired
	private SpecialistMapper mapper;
	public ArrayList<Specialist> findSpecial() {
		// TODO Auto-generated method stub
		return mapper.findSpecial();
	}
	public boolean insertSpecialist(String s_name, String s_photo,
			String s_introduction) {
		// TODO Auto-generated method stub
		return mapper.insertSpecialist(s_name, s_photo, s_introduction);
	}

}
