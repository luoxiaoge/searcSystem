package com.roymark.service.impl;

import java.util.ArrayList;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.FeeMapper;
import com.roymark.pojo.Fee;
import com.roymark.service.IFeeService;

@Service("IFeeService")
public class FeeServiceImpl implements IFeeService {
	
	@Autowired
	
	private FeeMapper mapper;
	
	public ArrayList<Fee> findFee() {
		
		return mapper.findFee();
	}

}
