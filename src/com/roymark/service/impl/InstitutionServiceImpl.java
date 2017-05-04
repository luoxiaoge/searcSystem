package com.roymark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.InstitutionMapper;
import com.roymark.pojo.Institution;
import com.roymark.service.IInstitutionService;
@Service("IInstitutionService")
public class InstitutionServiceImpl implements IInstitutionService {
    @Autowired
    private InstitutionMapper mapper;
	public Institution findIns(Integer id) {
		return mapper.findIns(id);
	}
	public boolean insertIns(String i_introduction) {
		
		return mapper.insertIns(i_introduction);
	}
	public boolean updateIns(String i_introduction) {
		// TODO Auto-generated method stub
		return mapper.updateIns(i_introduction);
	}

}
