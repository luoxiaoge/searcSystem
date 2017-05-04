package com.roymark.mapper;

import java.util.ArrayList;
import com.roymark.pojo.Specialist;
public interface SpecialistMapper {
     public ArrayList<Specialist>  findSpecial();
     public boolean insertSpecialist(String s_name,String s_photo,String s_introduction);
} 
