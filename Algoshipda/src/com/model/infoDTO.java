package com.model;

public class infoDTO {
	private int information_index;
	private String infor_title;
	private String infor_addr;
	
	public int getInformation_index() {
		return information_index;
	}
	public void setInformation_index(int information_index) {
		this.information_index = information_index;
	}
	public String getInfor_title() {
		return infor_title;
	}
	public void setInfor_title(String infor_title) {
		this.infor_title = infor_title;
	}
	public String getInfor_addr() {
		return infor_addr;
	}
	public void setInfor_addr(String infor_addr) {
		this.infor_addr = infor_addr;
	}
	public infoDTO(int information_index, String infor_title, String infor_addr) {
		super();
		this.information_index = information_index;
		this.infor_title = infor_title;
		this.infor_addr = infor_addr;
	}
	
	
	
	
	
}
