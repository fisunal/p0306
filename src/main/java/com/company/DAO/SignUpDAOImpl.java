package com.company.DAO;

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
	public int signUp(SignUpVO signUpVO)  throws Exception {
		return sqlSession.insert(namespace+".signUp",signUpVO);
	}

}
