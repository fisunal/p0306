package com.company.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.VO.signInVO;
import com.company.services.SignInService;

@Controller
public class SignInController {
	@Inject
	SignInService service;
	
	@PostMapping("/signIn")
	public String signIn(HttpSession session,Model model, @RequestParam(value="id") String id, @RequestParam(value="pass") String pass) throws Exception {
		String view = null;
		List<signInVO> list;
		list=service.signIn();
		for(int i=0;i<list.size();i++) {
			System.out.println(i);
			if(list.get(i).getId().equals(id)) {
				if(list.get(i).getPassword().equals(pass)) {
					session.setAttribute("id", id);
					view="mainPage";
					break;
				}else{
					model.addAttribute("msg","로그인 정보가 일치하지 않습니다.(아이디나 비밀번호를 확인해 주세요.)");
					view="SignInPage";
					break;
				}
			}else {
				if(i==list.size()-1) {
				model.addAttribute("msg","로그인 정보가 일치하지 않습니다.(아이디나 비밀번호를 확인해 주세요.)");
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
		return "mainPage";
	}

}