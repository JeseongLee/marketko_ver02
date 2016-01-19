package org.market.marketko.controller;

import javax.annotation.Resource;

import org.market.marketko.model.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@Resource
	private AdminService adminService;
	
	/**
	 * FlatForm 문의 
	 */
	public ModelAndView registerServiceCenter(String eMail){
		return null;
	}
	
	
}
