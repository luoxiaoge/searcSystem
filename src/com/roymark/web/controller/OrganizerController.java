package com.roymark.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.roymark.pojo.Organizer;
import com.roymark.service.IOrganizerService;

@Controller
public class OrganizerController {
      @Autowired
      private IOrganizerService ios;
      //查询所有组织机构的图片信息
      @RequestMapping("fo.do")
      public @ResponseBody ArrayList<Organizer> findorg(){
		return ios.findorg();
      }
      //上传信息
      @RequestMapping("org.do")
	   public String upload(HttpServletRequest request, HttpServletResponse response
			 ,@RequestParam(value="file",required=false) MultipartFile file)throws IOException,ServletException{
    	  //获取输入的参数
    	  String o_name=request.getParameter("o_name");
    	  String o_text=request.getParameter("o_text");
		  //设置上传文件夹，
  	   	String uploadPath="images";
  	    @SuppressWarnings("deprecation")
			String root=request.getRealPath("/");   //获取当前Web项目的真是路径
  	    final File file2=new File(root+uploadPath+"/");   //定义上传路径的File对象
  	    //获取上传的文件名
  	     String fileName1=file.getOriginalFilename();
  	    //判断是否选择了上传文件
  	    if(fileName1!=null&&!fileName1.isEmpty()){
  	    	//把文件保存到上传路径
  	    	File file3=new File(file2,fileName1);
  	    	String a=file3.getAbsolutePath();
  	    	String b=a.substring(a.lastIndexOf("\\"));
  	    	uploadPath=uploadPath+b;
  	    		//将图片地址存入数据库中
      	       ios.insertorg(uploadPath, o_name, o_text);
               //文件存入到指定路径 
  	    	  file.transferTo(file3);
  	    }
  	      /*//更换首页面
	        Map<String, Object> map=new HashMap<String,Object>();
	        map.put("photo", uploadPath);
  	      return new ModelAndView("/WEB-INF/jsp/homepage.jsp",map);*/
  	      return "/WEB-INF/jsp/success.jsp";
		}
}
