package com.company.model;

public class GoodsVO {
	private int seq;
	private String cat1;
	private String p_name;
	private String p_content;
	private String p_ship;
	private String p_origin;
	private String p_image1;
	private String p_image2;
	private int p_stock;
	private int p_price;
	
	//getter/setter
	public int getSeq() {return seq;}
	public void setSeq(int seq) {this.seq = seq;}
	
	public String getCat1() {return cat1;}
	public void setCat1(String cat1) {this.cat1 = cat1;}
	
	public String getP_name() {return p_name;}
	public void setP_name(String p_name) {this.p_name = p_name;}
	
	public String getP_content() {return p_content;}
	public void setP_content(String p_content) {this.p_content = p_content;}
	
	public String getP_ship() {return p_ship;}
	public void setP_ship(String p_ship) {this.p_ship = p_ship;}
	
	public String getP_origin() {return p_origin;}
	public void setP_origin(String p_origin) {this.p_origin = p_origin;}
	
	public String getP_image1() {return p_image1;}
	public void setP_image1(String p_image1) {this.p_image1 = p_image1;}
	
	public String getP_image2() {return p_image2;}
	public void setP_image2(String p_image2) {this.p_image2 = p_image2;}
	
	public int getP_stock() {return p_stock;}
	public void setP_stock(int p_stock) {this.p_stock = p_stock;}
	
	public int getP_price() {return p_price;}
	public void setP_price(int p_price) {this.p_price = p_price;}
	
	@Override
	public String toString() {
		return "GoodsVO [seq=" + seq + ", cat1=" + cat1 + ", p_name=" + p_name 
				+ ", p_content=" + p_content + ", p_ship=" + p_ship + ", p_origin=" 
				+ p_origin + ", p_image1=" + p_image1 + ", p_image2=" + p_image2
				+ ", p_stock=" + p_stock + ", p_price=" + p_price + "]";
	}
	
}
