package com.roymark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roymark.mapper.StudentMapper;
import com.roymark.pojo.Student;
import com.roymark.service.IStudentService;


@Service("IStudentService")
public class StudentServiceImpl implements IStudentService {
    @Autowired
	private StudentMapper mapper;
    
	public Student findById(int id) throws Exception {
		return mapper.findById(id);
	}
}
