package com.company.services;

import java.util.List;

import com.company.VO.SignInVO;

public interface SignInService {
	
	List<SignInVO> signIn() throws Exception;

}
