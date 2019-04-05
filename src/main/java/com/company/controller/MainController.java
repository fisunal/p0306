package com.company.controller;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.VO.SignUpVO;
import com.company.services.SignUpService;

@Controller
@RequestMapping("/signUp")
public class MainController {
	
	@GetMapping("/")
	public String signUp() {
		
		return "/regiPage/MemberRegi";
	}
	
	@GetMapping("/idcheck")
	public String idcheck() {
		return "/regiPage/id_dup";
	}
	
	@Inject
	SignUpService service;
	
	/*@Resource
	private Validator vali;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(this.vali);
	}*/
	
	@PostMapping("/processing")
	public String process(HttpSession session, @ModelAttribute/* @Valid */SignUpVO signUpVO/*, BindingResult br*/) throws Exception{
		String msg=null;
		
		/*if(br.hasErrors()) {
			List errors=br.getFieldErrors();
		}*/
		
		service.signUp(signUpVO);
		session.setAttribute("id", signUpVO.getId());
		
		return "/regiPage/RegiDone";
	}

}
