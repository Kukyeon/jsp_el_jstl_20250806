package com.kkuk.dto;

public class BoradDto {
	// 글 한개의 정보를 저장할 DTO 클래스
	
	
	private int bnum; //  게시글 번호
	private String btitle; // 게시글 제목
	private String bwriter; // 게시글 글쓴이
	private String bdate; // 게시글 날짜
	
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
	public BoradDto(int bnum, String btitle, String bwriter, String bdate) {
		super();
		this.bnum = bnum;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bdate = bdate;
	}
	
	public BoradDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
