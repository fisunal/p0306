package com.company.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.VO.SignInVO;
import com.company.services.SignInService;

@Controller
public class SignInController {
	@Inject
	SignInService service;
	
	@PostMapping("/signIn")
	public String signIn(HttpSession session, @RequestParam(value="id") String id, @RequestParam(value="pass") String pass) throws Exception {
		String view = null;
		List<SignInVO> list;
		list=service.signIn();
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getId().equals(id)) {
				if(list.get(i).getPassword().equals(pass)) {
					session.setAttribute("id", id);
					view="redirect:/index";
					break;
				}else{
					view="SignInPage";
					break;
				}
			}else {
				if(i==list.size()-1) {
				view="SignInPage";
				break;
				}
			}
		}
				return view;
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

}