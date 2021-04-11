package com.company.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.model.MemberVO;
import com.company.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	//회원가입 페이지 이동 
	@RequestMapping(value = "/join", method = RequestMethod.GET) 
	public void loginGET() { 
		logger.info("회원가입 페이지 진입"); 
	} 
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST) 
	public String joinPOST(MemberVO member) throws Exception{ 
		String rawPw = "";            // 인코딩 전 비밀번호
        String encodePw = "";        // 인코딩 후 비밀번호
        
        rawPw = member.getPw1();            	// 비밀번호 데이터 얻음
        encodePw = pwEncoder.encode(rawPw);     // 비밀번호 인코딩
        member.setPw1(encodePw);            	// 인코딩된 비밀번호 member객체에 다시 저장

        //회원가입 쿼리 실행 
        memberservice.memberJoin(member);

		return "redirect:/main"; 
	}

	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public void joinGET() { 
		logger.info("로그인 페이지 진입"); 
	}
	
	//아이디 중복 검사 
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST) 
	@ResponseBody 
	public String memberIdChkPOST(String id) throws Exception{ 
		logger.info("memberIdChk() 진입"); 
			
		int result = memberservice.idCheck(id); 
			
		logger.info("결과값 = " + result); 
			
		if(result != 0) { 
			return "fail"; // 중복 아이디가 존재 
		} else { 
			return "success"; // 중복 아이디 x 
		}
			
	} // memberIdChkPOST() 종료

	//로그인
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
		 HttpSession session = request.getSession();
	     String rawPw = "";
	     String encodePw = "";

	     MemberVO lvo = memberservice.memberLogin(member);    // 제출한아이디와 일치하는 아이디 있는지 
	        
	     if(lvo != null) {            // 일치하는 아이디 존재시
	    	 rawPw = member.getPw1();        // 사용자가 제출한 비밀번호
	    	 encodePw = lvo.getPw1();        // 데이터베이스에 저장한 인코딩된 비밀번호
	            
	    	 if(true == pwEncoder.matches(rawPw, encodePw)) {        // 비밀번호 일치여부 판단
	    		 lvo.setPw1("");      // 인코딩된 비밀번호 정보 지움
	    		 session.setAttribute("member", lvo);	// session에 사용자의 정보 저장
	           	 return "redirect:/main";	// 메인페이지 이동
	    	 } else {
	    		 rttr.addFlashAttribute("result", 0);            
	          	 return "redirect:/member/login";		// 로그인 페이지로 이동
	    	 }
	            
	     } else {                    // 일치하는 아이디가 존재하지 않을 시 (로그인 실패)
	    	 rttr.addFlashAttribute("result", 0);            
	    	 return "redirect:/member/login";    		// 로그인 페이지로 이동
	     }

	}
	
	//메인페이지 로그아웃
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession();
        session.invalidate();
        
        return "redirect:/main"; 
    }
    
    //비동기방식 로그아웃 메서드
    @RequestMapping(value="logout.do", method=RequestMethod.POST)
    @ResponseBody
    public void logoutPOST(HttpServletRequest request) throws Exception{
        logger.info("비동기 로그아웃 메서드 진입");
        
        HttpSession session = request.getSession();
        session.invalidate();
    }
    
    //마이 페이지 이동
  	@RequestMapping(value = "/mypage", method = RequestMethod.GET) 
  	public void mypageGET() { 
  		logger.info("마이 페이지 진입"); 
  	}
    
    //장바구니 페이지 이동
  	@RequestMapping(value = "/basket", method = RequestMethod.GET) 
  	public void basketGET() { 
  		logger.info("장바구니 페이지 진입"); 
  	}
  	
  	//취소/반품/교환/환불 내역 이동
  	@RequestMapping(value = "/mypage_cancel", method = RequestMethod.GET) 
  	public void cancelGET() { 
  		logger.info("취소/반품/교환/환불 내역 진입"); 
  	}
  	
  	//구매후기 이동
  	@RequestMapping(value = "/mypage_buy", method = RequestMethod.GET) 
  	public void buyGET() { 
  		logger.info("구매후기 진입"); 
  	}
  	
  	//개인정보 확인/수정
  	@RequestMapping(value = "/mypage_personal", method = RequestMethod.GET) 
  	public void personalGET() { 
  		logger.info("개인정보 확인/수정 진입"); 
  	}
  	
  	//배송지 관리 이동
  	@RequestMapping(value = "/mypage_address", method = RequestMethod.GET) 
  	public void addressGET() { 
  		logger.info("배송지 관리 진입"); 
  	}
  	
}
