package com.sdp.edu.vo;

public class Attr {
	private int id;
	private String shxm_mch;
	private String shxzh;
	private String chjshj;

	public Attr() {
		super();
	}

	public Attr(int id, String shxm_mch, String shxzh, String chjshj) {
		super();
		this.id = id;
		this.shxm_mch = shxm_mch;
		this.shxzh = shxzh;
		this.chjshj = chjshj;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShxm_mch() {
		return shxm_mch;
	}

	public void setShxm_mch(String shxm_mch) {
		this.shxm_mch = shxm_mch;
	}

	public String getShxzh() {
		return shxzh;
	}

	public void setShxzh(String shxzh) {
		this.shxzh = shxzh;
	}

	public String getChjshj() {
		return chjshj;
	}

	public void setChjshj(String chjshj) {
		this.chjshj = chjshj;
	}

	@Override
	public String toString() {
		return "Attr [id=" + id + ", shxm_mch=" + shxm_mch + ", shxzh=" + shxzh + ", chjshj=" + chjshj + "]";
	}

}
