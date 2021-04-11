package com.company.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {
	@Autowired
	private MemberMapper membermapper;
	
	//회원가입 쿼리 테스트 메서드
	@Test
	public void memberJoin() throws Exception {
		MemberVO member = new MemberVO();
		
		member.setId("test");
		member.setPw1("test1234");
		member.setPw2("test1234");
		member.setName("test");
		member.setTel("01055768311");
		member.setZcode(12345);
		member.setAddress1("구로동 구로구");
		member.setAddress2("206호");
		member.setEmail("test@test.com");
		
		membermapper.memberJoin(member);
	}
	
	/*로그인 쿼리 mapper 메서드 테스트
	@Test
	public void memberLogin() throws Exception{
		MemberVO member = new MemberVO();	//MemberVO 변수 선언 및 초기화
		
		//올바른 아이디/비번 입력 경우
		member.setId("test");
		member.setPw1("test1234");
		
		//올바르지 않는 아이디/비번 입력 경우
		//member.setId("abc");
		//member.setPw1("1234");
		
		membermapper.memberLogin(member);
		System.out.println("결과 값 : " + membermapper.memberLogin(member));
	}
	*/
}
