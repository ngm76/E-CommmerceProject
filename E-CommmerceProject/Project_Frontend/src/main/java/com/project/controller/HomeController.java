package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.dao.CategoryDao;
import com.project.dao.ProductDao;
import com.project.models.Product;


@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	
	
	public HomeController() {
		System.out.println("Home Controller initiated");
	}
	
	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	
	@RequestMapping(value="/index")
	public String getHomePage(Model model) {
			
		return "index";
	}
	
	@RequestMapping(value="/aboutus")
	public String aboutusPage() {
		return "aboutus";
	}
	
	
	/*@RequestMapping(value="/login")
	public String loginPage() {
		System.out.println("Login Page");
		return "login";
	}*/
	
	
	
	
	
	@RequestMapping(value="/admin")
	public String adminPage() {
		return "admin";
	}
	
	
	@RequestMapping(value="/userhomepage")
	public String userhomepage() {
		return "userhomepage";
	}
	
}
