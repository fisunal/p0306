package com.company.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DAO.signDAO;
import com.company.VO.signInVO;

@Service
public class SignInService implements SignService{
	@Inject
	private signDAO dao;
	
	@Override
	public List<signInVO> signIn() throws Exception{
		return dao.signIn();
	}

}
