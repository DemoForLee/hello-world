package com.mining.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page")
public class PageController {

	
	@RequestMapping(value="/login")
	public ModelAndView toAndView (){
		return new ModelAndView("/login");
	}
	
	@RequestMapping(value="/login_sys")
	@ResponseBody
	public String loginDemo(String uName,String pwd){
		if(uName.equals("admin") && pwd.equals("admin")){
			return "success";
		}else
		{
			return "fail";
		}
	}
	
	@RequestMapping(value="/test/{pageName}")
	public String toPage(@PathVariable("pageName") String pageName){
		
		System.out.println(pageName);
		return pageName;
	}
}
