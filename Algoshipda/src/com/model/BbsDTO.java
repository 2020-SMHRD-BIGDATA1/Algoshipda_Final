package com.model;

import java.sql.Timestamp;

public class BbsDTO {

	private int bbsId = 1, bbsHit = 0;
	private String bbsTitle, bbsContent, member_id;
	private Timestamp bbsDate;
	
	

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
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BbsDto [bbsId=").append(bbsId).append(", bbsHit=").append(bbsHit).append(", bbsTitle=")
				.append(bbsTitle).append(", bbsContent=").append(bbsContent).append(", bbsDate=").append(bbsDate).append(", member_id=").append(member_id).append("]");
		return builder.toString();
	}
}
