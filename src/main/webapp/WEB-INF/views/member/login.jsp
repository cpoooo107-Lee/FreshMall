<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>로그인</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/member/login.css" />
        <script src="main.jsp" defer></script>
	
	<script
  		src="https://code.jquery.com/jquery-3.4.1.js"
  		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  		crossorigin="anonymous">
	</script>
	
    </head>
</head>

<body>
	<form id="login_form" method="post">
    <nav id="header">
        <div class="header_menu">
            <ul class="header_menu">
            	<li class="header_menu_item"><a href="/member/login">로그인</a></li>
                <li class="header_menu_item1"><a href="/member/join">회원가입</a></li>
                <li class="header_menu_item"><a href="cus_service.html">고객센터</a></li>
            </ul>
        </div>
    </nav>
    
    <div class="logo_srarch">
        <div class="header_logo">
            <a href="/main">
                <img src="/resources/imgs/logo.png" class="logo">
            </a>
        </div>
    </div>

    <div id="navbar">
        <div class="navbar_menu">
            <ul class="navbar_menu">
                <li class="navbar_menu_item"><b>전체 상품</b></li>
                <li class="navbar_menu_item"><b>농산물</b></li>
                <li class="navbar_menu_item"><b>수산물</b></li>
                <li class="navbar_menu_item"><b>육류</b></li>
                <li class="navbar_menu_item"><b>견과류</b></li>
            </ul>
            <div class="search">
                <input type="text" class="search_text" placeholder="신선한 바른먹거리">
                <input type="image" src="/resources/imgs/search.png" class="btn_search">
            </div>
        </div>
    </div>
    
    <div class="main">     
        <header>            
            <div class="head">
                <h2>로그인</h2>
            </div>
        </header>
        
        <div class="nohead">        
            <div class="input">
                <div class="input_id">  
                    <h3>ID</h3>
                    <input placeholder="    아이디" type="text" class="id_input" name="id"></input>
                </div>
                <div class="input_pw">
                    <h3>비밀번호</h3>
                    <input placeholder="    비밀번호" type="password" class="pw1_input" name="pw1"></input>
                </div>
                
                <c:if test = "${result == 0 }">
                	<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
				</c:if>
				
                <div class="logbtn">
                	<input type="button" class="login_button" value="로그인" />
                </div>
                <div class="login_stay">
                    <input type="checkbox"></input>
                    <span>로그인 상태 유지</span>
                </div>
            </div>
            
            <div class="Easy_login">
                <h2>간편 로그인</h2>
                <ul class="easybtn">                
                    <button><i class="naver"></i><span>NAVER</span></button>
                    <button><i class="kakao"></i><span>KAKAO</span></button>
                </ul>
                <div class="forget_msg">
                    <a href="http://find_id.com.kr">아이디 찾기</a>&nbsp;|&nbsp;
                    <a href="http://find_pw.com.kr">비밀번호 찾기</a>&nbsp;|&nbsp;
                    <a href="http://join.com.kr">회원가입</a>
                </div>
            </div>
            
        </div>
    </div>
	</form>
    
<script>

/* 로그인 버튼 클릭 메서드 */
$(".login_button").click(function(){
	/* 로그인 메서드 서버 요청 */
    $("#login_form").attr("action", "/member/login.do");
    $("#login_form").submit();
    
});
</script>

</body>
</html>