package com.company.DAO;

import java.util.List;

import com.company.VO.IdCheckVO;
import com.company.VO.SignInVO;

public interface SignInDAO {
	
	public List<SignInVO> signIn() throws Exception;
	
}
