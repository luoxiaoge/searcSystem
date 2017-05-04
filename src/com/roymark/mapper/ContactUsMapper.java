package com.roymark.mapper;

import com.roymark.pojo.ContactUs;

public interface ContactUsMapper {
    public ContactUs findcu(Integer id);
    public boolean  insertcu(String cu_content);
}
