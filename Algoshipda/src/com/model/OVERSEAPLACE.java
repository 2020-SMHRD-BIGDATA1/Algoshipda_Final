package com.model;

public class OVERSEAPLACE {
	private int OVERSEA_index;
	private String OVERSEAtitle;
	private String OVERSEA_addr;
	private String OVERSEA_text;
	private String OVERSEA_URL;
	private String OVERSEAIMGNAME;

	public OVERSEAPLACE(int oVERSEA_index, String oVERSEAtitle, String oVERSEA_addr, String oVERSEA_text,
			String oVERSEA_URL, String oVERSEAIMGNAME) {
		OVERSEA_index = oVERSEA_index;
		OVERSEAtitle = oVERSEAtitle;
		OVERSEA_addr = oVERSEA_addr;
		OVERSEA_text = oVERSEA_text;
		OVERSEA_URL = oVERSEA_URL;
		OVERSEAIMGNAME = oVERSEAIMGNAME;
	}

	public int getOVERSEA_index() {
		return OVERSEA_index;
	}

	public void setOVERSEA_index(int oVERSEA_index) {
		OVERSEA_index = oVERSEA_index;
	}

	public String getOVERSEAtitle() {
		return OVERSEAtitle;
	}

	public void setOVERSEAtitle(String oVERSEAtitle) {
		OVERSEAtitle = oVERSEAtitle;
	}

	public String getOVERSEA_addr() {
		return OVERSEA_addr;
	}

	public void setOVERSEA_addr(String oVERSEA_addr) {
		OVERSEA_addr = oVERSEA_addr;
	}

	public String getOVERSEA_text() {
		return OVERSEA_text;
	}

	public void setOVERSEA_text(String oVERSEA_text) {
		OVERSEA_text = oVERSEA_text;
	}

	public String getOVERSEA_URL() {
		return OVERSEA_URL;
	}

	public void setOVERSEA_URL(String oVERSEA_URL) {
		OVERSEA_URL = oVERSEA_URL;
	}

	public String getOVERSEAIMGNAME() {
		return OVERSEAIMGNAME;
	}

	public void setOVERSEAIMGNAME(String oVERSEAIMGNAME) {
		OVERSEAIMGNAME = oVERSEAIMGNAME;
	}

}
