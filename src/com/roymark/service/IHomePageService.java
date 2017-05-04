package com.roymark.service;

import java.util.ArrayList;

import com.roymark.pojo.HomePage;

public interface IHomePageService {
        public boolean insertPhoto(String address);
        public ArrayList<HomePage> findAllPhoto();
        public boolean deletePhoto(String address);
        public HomePage findPhotoById(Integer id);
}
