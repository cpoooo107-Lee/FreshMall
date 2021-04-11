package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mapper.MemberMapper;
import com.company.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper membermapper;

	//회원가입
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		membermapper.memberJoin(member);
	}
	
	//아이디 중복 검사
	@Override
	public int idCheck(String id) throws Exception {
		return membermapper.idCheck(id);
	}

	//로그인
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return membermapper.memberLogin(member);
	}

	//마이페이지
	@Override
	public MemberVO memberMypage(MemberVO member) throws Exception {
		return membermapper.memberMypage(member);
	}
	
	//장바구니
	@Override
	public MemberVO memberBasket(MemberVO member) throws Exception {
		return membermapper.memberBasket(member);
	}
	
	//취소/반품/교환/환불 내역
	@Override
	public MemberVO memberMypage_cancel(MemberVO member) throws Exception {
		return membermapper.memberMypage_cancel(member);
	}
	
	//구매후기
	@Override
	public MemberVO memberMypage_buy(MemberVO member) throws Exception {
		return membermapper.memberMypage_buy(member);
	}

	//개인정보 확인/수정
	@Override
	public MemberVO memberMypage_personal(MemberVO member) throws Exception {
		return membermapper.memberMypage_personal(member);
	}
	
	//배송지 관리
	@Override
	public MemberVO memberMypage_address(MemberVO member) throws Exception {
		return membermapper.memberMypage_address(member);
	}
	
}
