package com.car.myapp.manager.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnADaoImpl implements QnADao{

	@Autowired
	private SqlSession session;
}
