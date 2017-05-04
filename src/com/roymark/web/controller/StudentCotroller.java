package com.roymark.web.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.roymark.pojo.Student;
import com.roymark.service.IStudentService;
@Controller
public class StudentCotroller {
	    @Autowired
        private  IStudentService iss;
	    @RequestMapping("find.do")
	    public String findById(int id,HttpServletRequest request) throws Exception{
			Student s=iss.findById(id);
			request.setAttribute("STU", s);
			return "forward:/WEB-INF/jsp/student.jsp";
		}
}
