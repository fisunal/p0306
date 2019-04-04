package com.company.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DAO.SignInDAO;
import com.company.VO.SignInVO;

@Service
public class SignInServiceImpl implements SignInService{
	@Inject
	private SignInDAO dao;
	
	@Override
	public List<SignInVO> signIn() throws Exception{
		return dao.signIn();
	}

}
