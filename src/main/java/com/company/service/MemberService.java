package com.company.service;

import com.company.model.MemberVO;

public interface MemberService {
	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	//아이디 중복 검사 
	public int idCheck(String id) throws Exception;

	//로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	//마이페이지
	public MemberVO memberMypage(MemberVO member) throws Exception;
	
	//장바구니
	public MemberVO memberBasket(MemberVO member) throws Exception;
	
	//취소/반품/교환/환불 내역 관리
	public MemberVO memberMypage_cancel(MemberVO member) throws Exception;
	
	//구매후기 관리
	public MemberVO memberMypage_buy(MemberVO member) throws Exception;
	
	//개인정보 확인/수정
	public MemberVO memberMypage_personal(MemberVO member) throws Exception;
	
	//배송지 관리
	public MemberVO memberMypage_address(MemberVO member) throws Exception;
	
}
