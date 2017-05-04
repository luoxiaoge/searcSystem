package com.roymark.service;

import com.roymark.pojo.Student;

public interface IStudentService {
	public Student findById(int id) throws Exception;
}
