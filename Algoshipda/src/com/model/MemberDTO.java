package com.model;

public class MemberDTO {

	private String member_id;
	private String member_pw;
	private String member_tel;
	private String member_addr;
	
	public MemberDTO(String member_id, String member_pw) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
	}
	
	
	public MemberDTO(String member_id, String member_pw, String member_addr, String member_tel) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_addr = member_addr;
		this.member_tel = member_tel;
	}
	public MemberDTO(String member_id, String member_tel, String member_addr) {
		super();
		this.member_id = member_id;
		this.member_addr = member_addr;
		this.member_tel = member_tel;
	}



	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public String getMember_addr() {
		return member_addr;
	}

	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	
	
	
	
	


}
