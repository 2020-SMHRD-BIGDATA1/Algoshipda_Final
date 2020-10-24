package com.model;

import java.sql.Timestamp;

public class BbsDTO {
	private int bbsId;
	private int bbsHit = 0;
	private String bbsTitle;
	private String bbsContent; 
	private String member_id;
	private Timestamp bbsDate;
	private String bbsImg;
	private int likes = 0; 

	
	
	
	
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getBbsId() {
		return bbsId;
	}
	public void setBbsId(int bbsId) {
		this.bbsId = bbsId;
	}
	public int getBbsHit() {
		return bbsHit;
	}
	public void setBbsHit(int bbsHit) {
		this.bbsHit = bbsHit;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Timestamp getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(Timestamp bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsImg() {
		return bbsImg;
	}
	public void setBbsImg(String bbsImg) {
		this.bbsImg = bbsImg;
	}

	
	
	}


	

