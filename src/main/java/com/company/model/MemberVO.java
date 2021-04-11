package com.company.model;

public class MemberVO {
	//회원 id
	private String id;
	//회원 pw
	private String pw1;
	//회원 pw 확인
	private String pw2;
	//회원명
	private String name;
	//전화번호
	private String tel;
	//우편번호
	private int zcode;
	//주소
	private String address1;
	//상세주소
	private String address2;
	//이메일
	private String email;

	//getter/setter
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}

	public String getPw1() {return pw1;}
	public void setPw1(String pw1) {this.pw1 = pw1;}

	public String getPw2() {return pw2;}
	public void setPw2(String pw2) {this.pw2 = pw2;}

	public String getName() {return name;}
	public void setName(String name) {this.name = name;}

	public String getTel() {return tel;}
	public void setTel(String tel) {this.tel = tel;}

	public int getZcode() {return zcode;}
	public void setZcode(int zcode) {this.zcode = zcode;}
	
	public String getAddress1() {return address1;}
	public void setAddress1(String address1) {this.address1 = address1;}
	
	public String getAddress2() {return address2;}
	public void setAddress2(String address2) {this.address2 = address2;}
	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw1=" + pw1 + ", pw2=" + pw2 + ", name=" + name + ", tel=" 
				+ tel + ", zcode=" + zcode + ", address1=" + address1 + ", address2=" + address2 
				+ ", email=" + email + "]";
	}
	
}
