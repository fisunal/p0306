package com.company.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.DAO.SignUpDAO;
import com.company.VO.SignUpVO;

@Service
public class SignUpServiceImpl implements SignUpService{
	@Inject
	private SignUpDAO dao;

	@Override
	public List<SignUpVO> signUp() throws Exception {
		return dao.signUp();
	}

}
