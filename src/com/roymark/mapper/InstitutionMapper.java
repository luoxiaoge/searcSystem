package com.roymark.mapper;

import com.roymark.pojo.Institution;

public interface InstitutionMapper {
     public Institution findIns(Integer id);
     public boolean insertIns(String i_introduction);
     public boolean updateIns(String i_introduction);
}
