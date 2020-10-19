package com.model;

public class SimilarPicture {
	private int picture_index;
	private String picturetitle;
	private String picture_addr;
	private String picture_text;
	private String picture_web;
	private String imageName;
	public int getPicture_index() {
		return picture_index;
	}
	public void setPicture_index(int picture_index) {
		this.picture_index = picture_index;
	}
	public String getPicturetitle() {
		return picturetitle;
	}
	public void setPicturetitle(String picturetitle) {
		this.picturetitle = picturetitle;
	}
	public String getPicture_addr() {
		return picture_addr;
	}
	public void setPicture_addr(String picture_addr) {
		this.picture_addr = picture_addr;
	}
	public String getPicture_text() {
		return picture_text;
	}
	public void setPicture_text(String picture_text) {
		this.picture_text = picture_text;
	}
	public String getPicture_web() {
		return picture_web;
	}
	public void setPicture_web(String picture_web) {
		this.picture_web = picture_web;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public SimilarPicture(int picture_index, String picturetitle, String picture_addr, String picture_text,
			String picture_web, String imageName) {
		super();
		this.picture_index = picture_index;
		this.picturetitle = picturetitle;
		this.picture_addr = picture_addr;
		this.picture_text = picture_text;
		this.picture_web = picture_web;
		this.imageName = imageName;
	} 
	
	

}
