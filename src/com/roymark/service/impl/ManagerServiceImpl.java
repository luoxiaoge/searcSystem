package com.roymark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.ManagerMapper;
import com.roymark.pojo.Manager;
import com.roymark.service.IManagerService;

@Service("IManagerService")
public class ManagerServiceImpl implements IManagerService{
    @Autowired
	private ManagerMapper mapper;
	public Manager login(String name) throws Exception {	
		return mapper.login(name);
	}
       
}
