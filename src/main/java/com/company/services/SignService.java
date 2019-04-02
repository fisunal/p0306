package com.company.services;

import java.util.List;

import com.company.VO.signInVO;

public interface SignService {
	
	List<signInVO> signIn() throws Exception;

}
