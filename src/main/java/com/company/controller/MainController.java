package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/signUp")
public class MainController {
	
	@GetMapping("/")
	public String signUp() {
		
		return "MemberRegi";
	}
}
