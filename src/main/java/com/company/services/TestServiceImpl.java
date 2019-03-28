package com.company.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.DAO.TestDAO;
import com.company.bean.TestBean;

@Service
public class TestServiceImpl implements TestService{
	@Inject
	private TestDAO dao;
	
	@Override
	public List<TestBean> test() throws Exception{
		return dao.test();
	}
}
