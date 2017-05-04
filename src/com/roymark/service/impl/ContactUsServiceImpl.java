package com.roymark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.ContactUsMapper;
import com.roymark.pojo.ContactUs;
import com.roymark.service.IContactUsService;
@Service("IContactUsService")
public class ContactUsServiceImpl implements IContactUsService{
    @Autowired
    private ContactUsMapper mapper;
	public ContactUs findcu(Integer id) {
		return mapper.findcu(id);
	}
	public boolean insertcu(String cu_content) {
		return mapper.insertcu(cu_content);
	}

}
