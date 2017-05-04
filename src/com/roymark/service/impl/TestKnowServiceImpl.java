package com.roymark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.TestKnowMapper;
import com.roymark.pojo.TestKnow;
import com.roymark.service.ITestKnowService;
@Service("ITestKnowService")
public class TestKnowServiceImpl implements ITestKnowService{
    @Autowired
    private TestKnowMapper mapper;
	public TestKnow findtk(Integer id) {
		
		return mapper.findtk(id);
	}
      
}
