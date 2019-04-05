package com.company.services;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DAO.SignUpDAO;
import com.company.VO.SignUpVO;

@Service
public class SignUpServiceImpl implements SignUpService{
	@Inject
	private SignUpDAO dao;

	@Override
	public int signUp(SignUpVO signUpVO) throws Exception {
		
		return dao.signUp(signUpVO);
	}

}
