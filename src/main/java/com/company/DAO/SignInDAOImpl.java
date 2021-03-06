package com.company.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.VO.SignInVO;

@Repository
public class SignInDAOImpl implements SignInDAO{
	private static String namespace="com.company.mappers.signMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<SignInVO> signIn() throws Exception{
		return sqlSession.selectList(namespace+".signIn");
	}

}
