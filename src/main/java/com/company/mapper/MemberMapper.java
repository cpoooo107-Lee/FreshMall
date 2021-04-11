package com.company.mapper;

import com.company.model.MemberVO;

public interface MemberMapper {
	//회원가입 
	public void memberJoin(MemberVO member);
	
	//아이디 중복 검사 
	public int idCheck(String id);

	//로그인
	public MemberVO memberLogin(MemberVO member);
	
	//마이페이지
	public MemberVO memberMypage(MemberVO member);
	
	//장바구니
	public MemberVO memberBasket(MemberVO member);
	
	//취소/반품/교환/환불 내역
	public MemberVO memberMypage_cancel(MemberVO member);
		
	//구매후기
	public MemberVO memberMypage_buy(MemberVO member);
		
	//개인정보 확인/수정
	public MemberVO memberMypage_personal(MemberVO member);
	
	//배송지 관리
	public MemberVO memberMypage_address(MemberVO member);
	
}
