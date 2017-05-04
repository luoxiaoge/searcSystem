package com.roymark.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roymark.pojo.Fee;
import com.roymark.pojo.TestKnow;
import com.roymark.service.IFeeService;
import com.roymark.service.ITestKnowService;

@Controller
public class FeeController {
	@Autowired
	private ITestKnowService itks;
	@Autowired
	private  IFeeService ifs; 
	 //ajax切换收费数据
	 @RequestMapping(value="fee.do",method=RequestMethod.GET)
	 public @ResponseBody ArrayList<Fee> findByF(){
		 ArrayList<Fee> list=ifs.findFee();
		return list;
	 }
	 //ajax切换检验须知
	 @RequestMapping(value="jianyan.do",method=RequestMethod.GET)
	 public @ResponseBody TestKnow findByjian(){
		 return itks.findtk(1);
	 }
	 
}
