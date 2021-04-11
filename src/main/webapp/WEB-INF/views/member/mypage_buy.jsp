<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매후기</title>
    <meta name="description" content="portflolio">
    <meta name="author" content="Soori">
    
    <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
    rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
    <link rel="stylesheet" href="/resources/css/member/mypage_buy.css" />
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

    <section class="review">
        <tr>
            <h2>구매후기</h2>
        </tr>
        <table width="600" border="1"> 
            <tr>
            <td>번호         
                </td>
                <td>상품명        
                </td>
                <td>구매후기         
                </td>
                <td>작성자         
                </td>
                <td>작성일         
                </td>
                <td>고객만족도          
                </td>
            </tr>
            <tr>
                <td>1         
                    </td>
                    <td> 참조기        
                    </td>
                    <td> 정말 싱싱하고, 맛있어요~~         
                    </td>
                    <td>손민주         
                    </td>
                    <td>2021.02.24         
                    </td>
                    <td>★★★★★         
                    </td>
                </tr>
                <tr>
                    <td>2         
                        </td>
                        <td> 부사        
                        </td>
                        <td> 정말 싱싱하고, 달아요~~         
                        </td>
                        <td>신우성         
                        </td>
                        <td>2021.02.24         
                        </td>
                        <td>★★★       
                        </td>
                    </tr>
                    <tr>
                        <td>3         
                            </td>
                            <td> 청포도        
                            </td>
                            <td> 맛있어요~ 역시 신선해 믿고 먹어요~         
                            </td>
                            <td>박유빈         
                            </td>
                            <td>2021.02.24         
                            </td>
                            <td>★★★★ ★        
                            </td>
                        </tr>
                        <tr>
                            <td>4         
                                </td>
                                <td> 장어        
                                </td>
                                <td> 오랜만에 몸보신으로 장어를 먹었는데 힘이 나네요^^         
                                </td>
                                <td>이철수       
                                </td>
                                <td>2021.02.24         
                                </td>
                                <td>★★★★        
                                </td>
                            </tr>
                            <tr>
                                <td>5         
                                    </td>
                                    <td> 부사        
                                    </td>
                                    <td> 정말 싱싱하고, 달아요~~         
                                    </td>
                                    <td>신우성         
                                    </td>
                                    <td>2021.02.24         
                                    </td>
                                    <td>★★★       
                                    </td>
                                </tr>
        </table>
    </section>
</div>
</body>
</html>