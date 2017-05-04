package com.roymark.mapper;

import java.util.ArrayList;

import com.roymark.pojo.Organizer;



public interface OrganizerMapper {
     public boolean insertorg(String o_photo,String o_name,String o_introduction);
     public ArrayList<Organizer>  findorg();
     
}
