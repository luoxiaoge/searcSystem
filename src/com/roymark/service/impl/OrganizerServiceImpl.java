package com.roymark.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.OrganizerMapper;
import com.roymark.pojo.Organizer;
import com.roymark.service.IOrganizerService;
@Service("IOrganizerService")
public class OrganizerServiceImpl implements IOrganizerService {
   
	@Autowired
	private OrganizerMapper mapper;
	public boolean insertorg(String o_photo, String o_name,
			String o_introduction) {
		return mapper.insertorg(o_photo, o_name, o_introduction);
	}
	public ArrayList<Organizer> findorg() {
		
		return mapper.findorg();
	}

}
