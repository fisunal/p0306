package com.company.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.VO.signInVO;
import com.company.services.SignService;

@Controller
@SessionAttributes("id")
public class SignInController {
	@Inject
	SignService service;
	
	@PostMapping("/signIn")
	public String signIn(Model model, @RequestParam(value="id") String id, @RequestParam(value="pass") String pass) throws Exception {
		List<signInVO> list;
		list=service.signIn();
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("id", id);
		model.addAttribute("pass", pass);
				return "signIn";
	}
}