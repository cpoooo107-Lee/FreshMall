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
        <link rel="stylesheet" href="/resources/css/member/basket.css" />
        <script src="main.jsp" defer></script>

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
        <div class="basket_main">
            <h2>장바구니</h2>
        </div>
    </header>
    <table class="basket_tab">
        <thead>
            <tr>
                <th class="allchck">
                    <input type="checkbox"> 전체선택
                </th>
                <th class="p_info">상품정보</th>
                <th class="p_price">상품금액</th>
                <th class="delivery_costs">배송비</th>
            </tr>
        </thead>
        <tbody class="order_list">
            <tr>
                <td colspan="4">
                    <div class="no-data panel-body text-center">
                        <p>장바구니에 상품이 없습니다.</p>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="total">
        <h3 class="total_price">총 상품가격 $ 원 + 총 배송비 $ 원 = 총 주문금액 $ 원</h3>
    </div>
    
<script>
    $("#logout_btn").click(function(){
    	$.ajax({
            type:"POST",
            url:"/member/logout.do",
            success:function(data){
                document.location.reload();     
            } 
        }); // ajax
    });
</script>
</body>
</html>