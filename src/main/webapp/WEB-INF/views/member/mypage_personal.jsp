<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지_개인정보 확인/수정</title>
    <meta name="description" content="portflolio">
    <meta name="author" content="Soori">
    
    <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
    rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
    <link rel="stylesheet" href="/resources/css/member/mypage_personal.css" />
    <script src="main.jsp" defer></script>

	<script
  		src="https://code.jquery.com/jquery-3.4.1.js"
  		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  		crossorigin="anonymous">
    </script>
</head>
<body>
    <nav id="header">
        <div class="header_menu">
            <ul class="header_menu">
            	<c:if test="${(member.name) != '관리자'}">
	           		<li class="header_menu_item"><span>${member.name}님</span></li>
            	</c:if>
            	<li class="header_menu_item1"><a href="/member/logout.do">로그아웃</a></li>
                <li class="header_menu_item"><a href="/member/mypage">마이페이지</a></li>
                <li class="header_menu_item2"><a href="/member/basket">장바구니</a></li>
          		<li class="header_menu_item">고객센터</li>
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
<header>
    <div class="head">
        <h2>마이페이지</h2>
    </div>
</header>
<div class="container">
    <div class="my_menu">
    	<ul class="my_shop">
      		<h3><b class="myshopping">My 쇼핑</b></h3>
      		<li><a href="/member/mypage">주문목록/배송조회</a></li>
   			<li><a href="/member/mypage_cancel">취소/반품/교환/환불 내역</a></li>
          	<li><a href="/member/mypage_buy">구매후기</a></li>
    	</ul>
 		<ul class="my_info">
       		<h3><b class="myinfo">My 정보</b></h3>
         	<li><a href="/member/mypage_personal">개인정보 확인/수정</a></li>
          	<li><a href="/member/mypage_address">배송지관리</a></li>
        </ul>
	</div>
        
 	<section class="personel_table">
            <tr>
                <h2>개인정보관리</h2>
            </tr>
            <table class="personal_tab"> 
                <tr class="pt_name">
                    <td class="pt_name"><h3>이름</h3></td>
                    <td>
                        <input type="text" class="pt_name_input"/>            
                    </td>
                </tr>
                <tr class="pt_email">
                    <td class="pt_email"><h3>이메일</h3></td>
                    <td>
                        <input type="email" class="pt_email_input" placeholder="examaple@domain.com"/>            
                    </td>
                </tr>
                <tr class="pt_num">
                    <td class="pt_num"><h3>전화번호</h3></td>
                    <td>
                        <form name="myForm">               
                            <input type="tel" class="pt_num_input"                    
                            pattern="(010)-[0-9]{4}-[0-9]{4}" required />               
                        </form>         
                    </td>
                </tr>
                <tr class="pt_sms">
                    <td class="pt_sms"><h3>수신설정</h3></td>
                    <td>
                        <input type="checkbox" value="true">
                        <input type="hidden" value="false"> 메일
                        
                        <input type="checkbox" value="true">
                        <input type="hidden" value="false"> SMS
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"> 
                        <input type="submit" value="확인" style="margin-right: 20px;">
                    </td>
                </tr>
            </table>
        </section>

</body>
</html>