package com.roymark.mapper;

import java.util.ArrayList;

import com.roymark.pojo.HomePage;



public interface HomePageMapper {
      public boolean insertPhoto(String address);
      public ArrayList<HomePage> findAllPhoto();
      public boolean deletePhoto(String address);
      public HomePage findPhotoById(Integer id);
}
