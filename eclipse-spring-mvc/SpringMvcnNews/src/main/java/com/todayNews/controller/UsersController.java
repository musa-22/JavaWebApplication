package com.todayNews.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.todayNews.model.Users;

import com.todayNews.service.UsersServices;


@Controller
@RequestMapping
public class UsersController {

	@Autowired
	UsersServices usersServices;
	
	
	/*
	 * add user + redirect user after finish process or registration
	 */
	
	// load data from forms 
	@GetMapping("regisform")
	public String addUsersWriters() {
		
		return "regisForm";
	}
	
	// here we insert data thats loaded from form
	
	@PostMapping("/ingectUsersNow")
	public String ingectUsersNow(@ModelAttribute("ingectUsersNow") Users users) {
		
		usersServices.addUsersWriters(users);
		
		return "home";
		
	}
	
	
}
