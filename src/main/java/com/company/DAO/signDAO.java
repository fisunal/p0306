package com.company.DAO;

import java.util.List;

import com.company.VO.signInVO;

public interface signDAO {
	
	public List<signInVO> signIn() throws Exception;
}
