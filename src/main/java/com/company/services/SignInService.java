package com.company.services;

import java.util.List;

import com.company.VO.signInVO;

public interface SignInService {
	
	List<signInVO> signIn() throws Exception;

}
