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
      //��ѯ������֯������ͼƬ��Ϣ
      @RequestMapping("fo.do")
      public @ResponseBody ArrayList<Organizer> findorg(){
		return ios.findorg();
      }
      //�ϴ���Ϣ
      @RequestMapping("org.do")
	   public String upload(HttpServletRequest request, HttpServletResponse response
			 ,@RequestParam(value="file",required=false) MultipartFile file)throws IOException,ServletException{
    	  //��ȡ����Ĳ���
    	  String o_name=request.getParameter("o_name");
    	  String o_text=request.getParameter("o_text");
		  //�����ϴ��ļ��У�
  	   	String uploadPath="images";
  	    @SuppressWarnings("deprecation")
			String root=request.getRealPath("/");   //��ȡ��ǰWeb��Ŀ������·��
  	    final File file2=new File(root+uploadPath+"/");   //�����ϴ�·����File����
  	    //��ȡ�ϴ����ļ���
  	     String fileName1=file.getOriginalFilename();
  	    //�ж��Ƿ�ѡ�����ϴ��ļ�
  	    if(fileName1!=null&&!fileName1.isEmpty()){
  	    	//���ļ����浽�ϴ�·��
  	    	File file3=new File(file2,fileName1);
  	    	String a=file3.getAbsolutePath();
  	    	String b=a.substring(a.lastIndexOf("\\"));
  	    	uploadPath=uploadPath+b;
  	    		//��ͼƬ��ַ�������ݿ���
      	       ios.insertorg(uploadPath, o_name, o_text);
               //�ļ����뵽ָ��·�� 
  	    	  file.transferTo(file3);
  	    }
  	      /*//������ҳ��
	        Map<String, Object> map=new HashMap<String,Object>();
	        map.put("photo", uploadPath);
  	      return new ModelAndView("/WEB-INF/jsp/homepage.jsp",map);*/
  	      return "/WEB-INF/jsp/success.jsp";
		}
}