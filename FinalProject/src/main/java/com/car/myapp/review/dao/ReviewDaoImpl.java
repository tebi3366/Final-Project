package com.car.myapp.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.car.myapp.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<ReviewDto> getList(ReviewDto dto) {
		
		return session.selectList("review.getList", dto);
	}

	@Override
	public int getCount(ReviewDto dto) {

		return session.selectOne("review.getCount", dto);
	}

	@Override
	public void insert(ReviewDto dto) {
		session.insert("review.insert", dto);
	}

	@Override
	public ReviewDto getData(int sr_num) {
		return session.selectOne("review.getData", sr_num);
	}

	@Override
	public void addViewCount(int sr_num) {
		session.update("review.addViewCount", sr_num);
	}

	@Override
	public void delete(int sr_num) {
		session.delete("review.delete", sr_num);
	}

	@Override
	public void update(ReviewDto dto) {
		session.update("review.update", dto);
	}
	//Ű���尡 ����ִ� ReviewDto �� ���޹޾Ƽ� �� ������ �����ϴ� �޼ҵ� 
	@Override
	public ReviewDto getData(ReviewDto dto) {
		
		return session.selectOne("review.getData2", dto);
	}
	
}
