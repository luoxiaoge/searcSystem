package com.roymark.web.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.roymark.service.IHomePageService;
@Controller
public class FileUploadController {	
	  //首页图片上传
	  @Autowired
	  private IHomePageService ips;
      /* Logger logger =LoggerFactory.getLogger(HomePageController.class);*/
       @RequestMapping("upload.do")
	   public String upload(HttpServletRequest request, HttpServletResponse response
			 ,@RequestParam(value="file",required=false) MultipartFile file)throws IOException,ServletException{	   
    	    //设置上传文件夹，
    	   	String uploadPath="images";
    	    @SuppressWarnings("deprecation")
			String root=request.getRealPath("/");   //获取当前Web项目的真是路径
    	    final File file2=new File(root+uploadPath+"/");   //定义上传路径的File对象
    	    System.out.println(file2.toString());
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
        	    	ips.insertPhoto(uploadPath);
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