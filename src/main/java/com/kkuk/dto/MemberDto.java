package com.kkuk.dto;

public class MemberDto {

	private String mid;
	private String mpw;
	private String mname;
	private int mage;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String mid, String mpw, String mname, int mage) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mage = mage;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public int getMage() {
		return mage;
	}

	public void setMage(int mage) {
		this.mage = mage;
	}
	
	
	
	
	
	
	
	
}
