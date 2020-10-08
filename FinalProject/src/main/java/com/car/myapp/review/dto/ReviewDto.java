package com.car.myapp.review.dto;

public class ReviewDto {
	private int sr_num;
	private String user_id;
	private String sr_title;
	private String sr_content;
	private int viewCount;
	private String sr_regdate;
	private int startRowNum;
	private int endRowNum;
	private int prevNum; 
	private int nextNum; 
    private int recnt;
    
    
	public int getSr_num() {
		return sr_num;
	}
	public void setSr_num(int sr_num) {
		this.sr_num = sr_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSr_title() {
		return sr_title;
	}
	public void setSr_title(String sr_title) {
		this.sr_title = sr_title;
	}
	public String getSr_content() {
		return sr_content;
	}
	public void setSr_content(String sr_content) {
		this.sr_content = sr_content;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getSr_regdate() {
		return sr_regdate;
	}
	public void setSr_regdate(String sr_regdate) {
		this.sr_regdate = sr_regdate;
	}
	public int getStartRowNum() {
		return startRowNum;
	}
	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}
	public int getEndRowNum() {
		return endRowNum;
	}
	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	public int getPrevNum() {
		return prevNum;
	}
	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}
	public int getNextNum() {
		return nextNum;
	}
	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}     
 

	

	
}
