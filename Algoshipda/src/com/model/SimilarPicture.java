package com.model;

public class SimilarPicture {
	private int picture_index;
	private String picturewhere;
	private String fileName;
	
	public SimilarPicture(int picture_index, String picturewhere, String fileName) {
		this.picture_index = picture_index;
		this.picturewhere = picturewhere;
		this.fileName = fileName;
	}
	
	public int getPicture_index() {
		return picture_index;
	}
	public void setPicture_index(int picture_index) {
		this.picture_index = picture_index;
	}
	public String getPicturewhere() {
		return picturewhere;
	}
	public void setPicturewhere(String picturewhere) {
		this.picturewhere = picturewhere;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	

}
