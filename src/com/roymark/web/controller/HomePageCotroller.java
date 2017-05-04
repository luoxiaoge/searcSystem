package com.roymark.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.roymark.pojo.ContactUs;
import com.roymark.pojo.Fee;
import com.roymark.pojo.HomePage;
import com.roymark.pojo.Institution;
import com.roymark.pojo.TestKnow;
import com.roymark.service.IContactUsService;
import com.roymark.service.IFeeService;
import com.roymark.service.IHomePageService;
import com.roymark.service.IInstitutionService;
import com.roymark.service.ITestKnowService;

@Controller
public class HomePageCotroller {
	Integer id_HomePage=28;
	@Autowired
	private  IContactUsService ius;
	@Autowired
	private ITestKnowService its;
	@Autowired
	private IInstitutionService iis;
	@Autowired
	private  IHomePageService hps;
	@Autowired
	private  IFeeService ifs; 
	//后台将所有图片的信息和地址查询出 进行操作或者切换
	@RequestMapping("photolist.do")
	public ModelAndView findAllPhoto(){
		Map<String,Object> map=new HashMap<String,Object>();
		List<HomePage> list=new ArrayList<HomePage>();
		list=hps.findAllPhoto();
		map.put("list",list);
		return new ModelAndView("homepage/photolist.jsp",map);
	 }
	//后台删除前台首页的图片在数据库中的地址（未实现同时删除上传到服务器中图片）
	@RequestMapping("deletephoto.do")
	public ModelAndView deletePhoto(HttpServletRequest request){
		String id=request.getParameter("id");
		System.out.println(id);
		hps.deletePhoto(id);
		Map<String,Object> map=new HashMap<String,Object>();
		List<HomePage> list=new ArrayList<HomePage>();
		list=hps.findAllPhoto();
		map.put("list",list);
		return new ModelAndView("homepage/photolist.jsp",map);
	}
	//首次访问页面将数据带入到页面中
	@RequestMapping("firstenter.do")
	public ModelAndView firstenter(HttpServletRequest request){
		/*String id=request.getParameter("id");
		Integer id2=Integer.valueOf(id);*/
		/*System.out.println(id2);*/
		ArrayList<Fee> list=ifs.findFee();
		//默认页面显示的内容为id为1的数据库信息
		Institution ins=iis.findIns(1);
		TestKnow ik=its.findtk(1);
		ContactUs cu=ius.findcu(1);
		HomePage hp=hps.findPhotoById(id_HomePage);
	
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("photo", hp);
		map.put("id", ins);
		map.put("ik", ik);
		map.put("cu", cu);
		map.put("list2", list);
		return new ModelAndView("WEB-INF/jsp/homepage.jsp",map);
	}
	//使用ajax刷新数据数据
	 @RequestMapping(value="zhuanjia.do",method=RequestMethod.GET)
	 public @ResponseBody Institution findByZJ(){
		Institution ins=iis.findIns(1);
		return ins;
	}
	
	//后台切换下首页图片
	@RequestMapping("MannagerChange.do")
	public String MannagerChange(HttpServletRequest request){
		String a=request.getParameter("id");
		id_HomePage =Integer.valueOf(a);
		return "/WEB-INF/jsp/success.jsp";
	}       
}
