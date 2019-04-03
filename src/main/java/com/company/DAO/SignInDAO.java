package com.company.DAO;

import java.util.List;

import com.company.VO.signInVO;
import com.company.VO.SignUpVO;

public interface SignInDAO {
	
	public List<signInVO> signIn() throws Exception;
}
