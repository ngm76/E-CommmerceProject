package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	public HomeController() {
		System.out.println("Home Controller initiated");
	}
	
	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	
	@RequestMapping(value="/index")
	public String getHomePage() {
		return "index";
	}
	
	@RequestMapping(value="/aboutus")
	public String aboutusPage() {
		return "aboutus";
	}
	
	
	@RequestMapping(value="/login")
	public String loginPage() {
		System.out.println("Login Page");
		return "login";
	}
	
	
	@RequestMapping(value="/admin")
	public String adminPage() {
		return "admin";
	}
	
	@RequestMapping(value="/register")
	public String signupPage() {
		return "register";
	}
	
	
	
}
