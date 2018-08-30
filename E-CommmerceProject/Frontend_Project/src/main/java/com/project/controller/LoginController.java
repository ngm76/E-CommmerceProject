package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	public LoginController() {
		System.out.println("Login Controller initiated");
	}

	/*
	 * @RequestMapping(method = RequestMethod.POST) public void
	 * doPost(HttpServletRequest request , HttpServletResponse response ) throws
	 * ServletException, IOException{ String uname =
	 * request.getParameter("username"); String upassword =
	 * request.getParameter("password");
	 * 
	 * if(uname.equals("admin") && (upassword.equals("admin"))) {
	 * System.out.println("username and password are correct");
	 * response.sendRedirect("admin"); }else { response.sendRedirect("error");
	 * 
	 * 
	 * } }
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		 ModelAndView mav = null;

		System.out.println("inside validation method");
		String uname = request.getParameter("username");
		String upassword = request.getParameter("password");
		while (uname != null && upassword != null) {
			if (uname.equals("admin") && (upassword.equals("admin"))) {
				System.out.println("username and password are correct");
				return "admin";
			} else {
				return "login";

			}
		}
		return "login";
	}

	/*
	 * if (user != null && user.getUsername() != null && user.getPassword() != null)
	 * { if (user.getUsername().equals("admin") &&
	 * user.getPassword().equals("admin")) { //model.addAttribute("msg",
	 * user.getUsername()); //mav = new ModelAndView("admin");
	 * System.out.println("username and password is correct"); return"admin"; } else
	 * { //model.addAttribute("error", "Invalid Details"); //mav = new
	 * ModelAndView("login");
	 * System.out.println("username and password is incorrect"); return "login"; } }
	 * else { //model.addAttribute("error", "Please enter Details"); //mav = new
	 * ModelAndView("login"); System.out.println("Please enter Details"); return
	 * "login"; }
	 */

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside Registeration method");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		while (username != null && password != null && confirmpassword != null) {
			if (password.equals(confirmpassword)) {
				System.out.println("Password and ConfirmPassword match");
				return "";
			} else {
				System.out.println("Password and ConfirmPassword donot martch");
				return "register";
			}

		}
		return "register";
	}

}
