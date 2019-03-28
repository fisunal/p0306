package com.company.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.bean.TestBean;

@Repository
public class TestDAOImpl implements TestDAO {
	private static final String namespace="com.company.mappers.testMapper";

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<TestBean> test() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".test");
	}

}
