package com.company.DAO;

import java.util.List;

import com.company.VO.SignUpVO;

public interface SignUpDAO {
	
	List<SignUpVO> signUp() throws Exception;

}
