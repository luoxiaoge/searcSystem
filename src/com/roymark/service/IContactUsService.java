package com.roymark.service;

import com.roymark.pojo.ContactUs;

public interface IContactUsService {
	public ContactUs findcu(Integer id);
	 public boolean  insertcu(String cu_content);
}
