package com.roymark.service;

import java.util.ArrayList;

import com.roymark.pojo.Specialist;

public interface ISpecialistService {
	public ArrayList<Specialist>  findSpecial();
	public boolean insertSpecialist(String s_name,String s_photo,String s_introduction);
}
