package com.roymark.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roymark.pojo.Manager;
import com.roymark.service.IManagerService;

//后台管理员登录
@Controller
public class ManagerController {
    @Autowired
	private IManagerService iss;
    @RequestMapping("login.do")
    public  String login(HttpServletRequest request)throws Exception{
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	Manager manager=iss.login(username);
    	if(manager.getName().equals(username)&&manager.getPassword().equals(password)){
    		return "forward:/WEB-INF/jsp/backstage.jsp";
    	} 
    	return "forward:/WEB-INF/jsp/error.jsp";
    }
    
}
