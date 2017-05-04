package com.roymark.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.roymark.pojo.Institution;
import com.roymark.service.IInstitutionService;

@Controller 
public class InstitutionController {
		@Autowired
		private IInstitutionService iis;
		//查询默认的信息
		@RequestMapping("findIns.do")
		public ModelAndView findIns(HttpServletRequest request){
			/*String id=request.getParameter("id");
			Integer id2=Integer.valueOf(id);
			System.out.println(id2);*/
			Institution ins=iis.findIns(1);
			System.out.println(ins.getI_introduction());
			Map<String,Object> map= new HashMap<String,Object>();
			map.put("id", ins);
			return new ModelAndView("about/simpleintroduction.jsp",map);
		}
		//ͨajax刷新本院简介内容
		@RequestMapping("ajaxfindins.do")
		public @ResponseBody Institution find(HttpServletRequest request){
			return iis.findIns(1);
		}
		//更新本院简介内容
	   @RequestMapping("updateins.do")
	   public String updateins(HttpServletRequest request){
		   String i_introduction=request.getParameter("ta1");
		   System.out.println(i_introduction);
           boolean a=iis.updateIns(i_introduction);
           if(a==true){
		     return "/WEB-INF/jsp/success.jsp";
				   }
            return "/WEB-INF/jsp/error.jsp";   
	   }
	   
}
