<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>장바구니</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/member/mypage_cancel.css" />
        <script src="main.jsp" defer></script>

		<script
  			src="https://code.jquery.com/jquery-3.4.1.js"
  			integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  			crossorigin="anonymous">
   		</script>
    </head>
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

        <div class="orderlist">
            <div class="orderlist_name">
                <h2>취소/반품/교환/환불 내역</h2>
            </div>
            <div class="order_theme">
                <ul class="order_theme_list">
                    <li><a href="mypage_cancel.html" class="all">취소</a></li>
                    <li><a href="mypage_return.html" class="ding">반품</a></li>    
                    <li><a href="mypage_change.html" class="ded">교환</a></li>                
                </ul>
            </div>
            <div>
                <table class="alltab">
                    <thead>
                        <tr>
                            <th class="order_date">주문일자</th>
                            <th class="order_details">구매내역</th>
                            <th class="ds_manage">배송관리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="4" class="orderlist_content">
                                <div class="orderlist_content_p">
                                    <p>장바구니에 상품이 없습니다.</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>                
            </div>
        </div>
    </div>
</body>
</html>