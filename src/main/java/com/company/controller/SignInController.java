package com.company.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.VO.signInVO;
import com.company.services.SignInService;

@Controller
@SessionAttributes("id")
public class SignInController {
	@Inject
	SignInService service;
	
	@PostMapping("/signIn")
	public String signIn(Model model, @RequestParam(value="id") String id, @RequestParam(value="pass") String pass) throws Exception {
		List<signInVO> list;
		list=service.signIn();
		model.addAttribute("list", list);
				return "signIn";
	}
}