package com.company.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.VO.SignUpVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO{
	private static String namespace="com.company.mappers.signMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<SignUpVO> signUp() throws Exception {
		return sqlSession.selectList(namespace+"signUp");
	}

}
