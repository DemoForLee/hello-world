package com.mining.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page")
public class PageController {

	@RequestMapping(value="{pageName}",method=RequestMethod.GET)
	public String toPage(@PathVariable("pageName") String pageName){
		
		System.out.println("123");
		return pageName;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView toAndView (){
		System.out.println("0000");
		return new ModelAndView("/login");
	}
}
