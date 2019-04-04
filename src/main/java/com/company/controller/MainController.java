package com.company.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.VO.SignUpVO;
import com.company.services.SignUpService;

@Controller
@RequestMapping("/signUp")
public class MainController {
	@Inject
	SignUpService service;
	
	@PostMapping("/processing")
	public String process(HttpSession session, @ModelAttribute SignUpVO signUpVO) throws Exception{
		
		return "RegiDone";
	}
	
	@GetMapping("/")
	public String signUp() {
		
		return "MemberRegi";
	}
	
	@GetMapping("/idcheck")
	public String idcheck() {
		return "id_dup";
	}
}
