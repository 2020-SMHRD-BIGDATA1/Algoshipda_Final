package com.model;

public class KOREAPLACE {
	private int KOREA_index;
	private String KOREAtitle;
	private String KOREA_addr;
	private String KOREA_text;
	private String KOREA_URL;
	private String KOREAIMGNAME;
	private String KOREA_tour;

	public KOREAPLACE(int kOREA_index, String kOREAtitle, String kOREA_addr, String kOREA_text, String kOREA_URL,
			String kOREAIMGNAME, String kOREA_tour) {
		super();
		KOREA_index = kOREA_index;
		KOREAtitle = kOREAtitle;
		KOREA_addr = kOREA_addr;
		KOREA_text = kOREA_text;
		KOREA_URL = kOREA_URL;
		KOREAIMGNAME = kOREAIMGNAME;
		KOREA_tour = kOREA_tour;
	}

	public int getKOREA_index() {
		return KOREA_index;
	}

	public void setKOREA_index(int kOREA_index) {
		KOREA_index = kOREA_index;
	}

	public String getKOREAtitle() {
		return KOREAtitle;
	}

	public void setKOREAtitle(String kOREAtitle) {
		KOREAtitle = kOREAtitle;
	}

	public String getKOREA_addr() {
		return KOREA_addr;
	}

	public void setKOREA_addr(String kOREA_addr) {
		KOREA_addr = kOREA_addr;
	}

	public String getKOREA_text() {
		return KOREA_text;
	}

	public void setKOREA_text(String kOREA_text) {
		KOREA_text = kOREA_text;
	}

	public String getKOREA_URL() {
		return KOREA_URL;
	}

	public void setKOREA_URL(String kOREA_URL) {
		KOREA_URL = kOREA_URL;
	}

	public String getKOREAIMGNAME() {
		return KOREAIMGNAME;
	}

	public void setKOREAIMGNAME(String kOREAIMGNAME) {
		KOREAIMGNAME = kOREAIMGNAME;
	}

	public String getKOREA_tour() {
		return KOREA_tour;
	}

	public void setKOREA_tour(String kOREA_tour) {
		KOREA_tour = kOREA_tour;
	}

}
