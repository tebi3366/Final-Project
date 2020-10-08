package com.car.myapp.review.service;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.myapp.review.dao.ReviewDao;
import com.car.myapp.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDao reviewDao;

	final int PAGE_ROW_COUNT=10;
	final int PAGE_DISPLAY_COUNT=5;
	
	@Override
	public void getList(HttpServletRequest request) {
		int pageNum=1;
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){
			pageNum=Integer.parseInt(strPageNum);
		}
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		int endRowNum=pageNum*PAGE_ROW_COUNT;
	
		String keyword=request.getParameter("keyword"); //�˻� Ű����
		String condition=request.getParameter("condition"); //�˻� ����
		if(keyword==null){
			keyword="";
			condition="";
		}
		String encodedK=URLEncoder.encode(keyword);
		
		ReviewDto dto=new ReviewDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		if(!keyword.equals("")){
			if(condition.equals("title_content")){
				 
				dto.setSr_title(keyword);
				dto.setSr_content(keyword);	
			}else if(condition.equals("sr_title")){
				dto.setSr_title(keyword);
			}else if(condition.equals("user_id")){
				dto.setUser_id(keyword);
			}
		}
		
		List<ReviewDto> list=reviewDao.getList(dto);
		int totalRow=reviewDao.getCount(dto);
		
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		int startPageNum=
			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //�������ش�. 
		}
		
		//EL 에서 사용할 값을 미리 request 에 담아두기
		request.setAttribute("list", list);
		request.setAttribute("startPageNum", startPageNum);
		request.setAttribute("endPageNum", endPageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPageCount", totalPageCount);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);				
	}


	@Override
	public void getDetail(HttpServletRequest request) {
		//�Ķ���ͷ� ���޵Ǵ� �۹�ȣ 
		int sr_num=Integer.parseInt(request.getParameter("sr_num"));
		/*
		�˻� Ű���忡 ���õ� ó�� 
		*/
		String keyword=request.getParameter("keyword"); //�˻� Ű����
		String condition=request.getParameter("condition"); //�˻� ����
		if(keyword==null){//���޵� Ű���尡 ���ٸ� 
			keyword=""; //�� ���ڿ��� �־��ش�. 
			condition="";
		}
		String encodedK=URLEncoder.encode(keyword);
		
		ReviewDto dto=new ReviewDto();
		dto.setSr_num(sr_num);
		
		if(!keyword.equals("")){
			if(condition.equals("title_content")){
				
				dto.setSr_title(keyword);
				dto.setSr_content(keyword);	
			}else if(condition.equals("sr_title")){
				dto.setSr_title(keyword);
			}else if(condition.equals("user_id")){
				dto.setUser_id(keyword);
			}
		}
		//�ڼ��� ������ �� ���� 
		ReviewDto resultDto=reviewDao.getData(dto);
		
		request.setAttribute("dto", resultDto);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);
		
		reviewDao.addViewCount(sr_num);
		
	
		
	}
		
	@Override
	public void saveContent(ReviewDto dto) {
		reviewDao.insert(dto);
		
	}

	@Override
	public void updateContent(ReviewDto dto) {
		reviewDao.update(dto);
		
	}

	@Override
	public void deleteContent(int sr_num, HttpServletRequest request) {
		reviewDao.delete(sr_num);
		
	}


}
