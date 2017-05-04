package com.roymark.service;

import com.roymark.pojo.Institution;

public interface IInstitutionService {
	public Institution findIns(Integer id);
	public boolean insertIns(String i_introduction);
	public boolean updateIns(String i_introduction);
}
