package com.company.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DAO.signInDAO;
import com.company.VO.signInVO;

@Service
public class SignInServiceImpl implements SignInService{
	@Inject
	private signInDAO dao;
	
	@Override
	public List<signInVO> signIn() throws Exception{
		return dao.signIn();
	}

}
