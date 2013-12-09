package com.vub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.vub.model.User;
import com.vub.model.UserDao;
import com.vub.db.*;

@Controller
public class LoginController {

	// Serving Login Page
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(@ModelAttribute("user") User user) {
		return "login";
	}

	// Logging in user
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String processLogin(@ModelAttribute("user") User user) {
		System.out.println("Login Controller: processLLogin");
		
		UserDao userDao = new UserDao();
		User user2 = userDao.findByUserName(user.getUserName());
		System.out.println("User 1: " + user);
		System.out.println("User 2; " + user2);
		
		if (user2 == null) {
			System.out.println("User not detected. Redirecting to login/create");
			return "redirect:/login?auth=fail";
		}
		else {
			if (user.getPassword().equals((user2.getPassword()))){
				return "redirect:/login/successful";
			}
			else {
			//TODO successful login into server
			System.out.println("Passwords don't match with username");
			return "redirect:/login?auth=fail";	
			}
		}
	}
}
