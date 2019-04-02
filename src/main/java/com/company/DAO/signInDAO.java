package com.company.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.VO.signInVO;

@Repository
public class signInDAO implements signDAO{
	private static final String namespace="com.company.mappers.signInMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<signInVO> signIn() throws Exception{
		return sqlSession.selectList(namespace+".signIn");
	}
}
