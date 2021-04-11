<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>신선해</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        <script
  			src="https://code.jquery.com/jquery-3.4.1.js"
  			integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  			crossorigin="anonymous">
    	</script>
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/main.css" />
        <script src="main.jsp" defer></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    
    <script>
        $(document).ready(function(){
        $('.slider').bxSlider({
        auto: true,
        speed: 1000,
        pause: 2500,
        mode:'fade',
        pager:true,
        autoHover: true
        });
    });
    </script>
    
    </head>
</head>

<body>
    <nav id="header">
        <div class="header_menu">
            <ul class="header_menu">
            	<!-- 로그인 하지 않은 상태 -->
            	<c:if test = "${member == null}">
            		<li class="header_menu_item"><a href="/member/login">로그인</a></li>
                	<li class="header_menu_item1"><a href="/member/join">회원가입</a></li>
                	<li class="header_menu_item">고객센터</li>
          		</c:if>
          		<!-- 로그인한 상태 -->
            	<c:if test="${member != null}">
            		<c:if test="${(member.name) == '관리자'}">
            		<li class="header_menu_item"><span>${member.name}님</span></li>
	               		<li class="header_menu_item1"><a id="logout_btn">로그아웃</a></li>
	                  	<li class="header_menu_item"><a href="/admin/main">관리자 페이지</a></li>
	                </c:if>
	                <c:if test="${(member.name) != '관리자'}">
	               		<li class="header_menu_item"><span>${member.name}님</span></li>
	               		<li class="header_menu_item1"><a id="logout_btn">로그아웃</a></li>
                  		<li class="header_menu_item"><a href="/member/mypage">마이페이지</a></li>
                  		<li class="header_menu_item2"><a href="/member/basket">장바구니</a></li>
                  		<li class="header_menu_item">고객센터</li>
            		</c:if>
            	</c:if>
            </ul>
        </div>
    </nav>
    
    <div class="logo_srarch">
        <div class="header_logo">
        	<a href="/main">
            	<img src="resources/imgs/logo.png" class="logo">
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
                <input type="image" src="resources/imgs/search.png" class="btn_search">
            </div>
        </div>
    </div>

    <div id="main_banner">
        <div class="event">
            <div class="slider">
                <div><img src="resources/imgs/main_banner_1.jpg"/></div>
                <div><img src="resources/imgs/main_banner_2.jpg"/></div>
                <div><img src="resources/imgs/main_banner_3.gif"/></div>
                <div><img src="resources/imgs/main_banner_4.gif"/></div>
                <div><img src="resources/imgs/main_banner_5.gif"/></div>
                <div><img src="resources/imgs/main_banner_6.gif"/></div>
                <div><img src="resources/imgs/main_banner_8.gif"/></div>
            </div>
        </div>
    </div>
    
    <div class="center_menu">
        <ul class="center_menu1">
            <img src="resources/imgs/menu1.png">
            <img src="resources/imgs/menu2.png">
            <img src="resources/imgs/menu3.png">
            <img src="resources/imgs/menu4.png">
            <img src="resources/imgs/menu5.png">
            <img src="resources/imgs/menu6.png">
            <img src="resources/imgs/menu7.png">
            <img src="resources/imgs/menu8.png">
        </ul>
    </div>
    
    <div id="listview">
        <div class="listview">
            <ul class="list">
                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item1.png" alt="상품이미지">
                            </a>
                        </div>
                        
                        <a class="info">
                            <span class="name">간편 간식 브리또 8종</span>
                            <span class="cost">
                                <span class="price">2,900원</span>
                            </span>
                            <span class="desc">가볍고 든든한 멕시칸 푸드! 까르보나라 치킨 브리또, 콰트로 치킨 브리또 신규 오픈</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item2.png" alt="상품이미지">
                            </a>
                        </div>
                        
                        <a class="info">
                            <span class="name">수원 왕갈비 1kg</span>
                            <span class="cost">
                                <span class="price">12,900원</span>
                            </span>
                            <span class="desc">치킨인가 갈비인가</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item3.png" alt="상품이미지">
                            </a>
                        </div>
                        
                        <a class="info">
                            <span class="name">친환경 왕란 20구</span>
                            <span class="cost">
                                <span class="price">9,900원</span>
                            </span>
                            <span class="desc">친환경 무항생제 슈퍼초울트라 왕란</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item4.png" alt="상품이미지">
                            </a>
                        </div>
                        <a class="info">
                            <span class="name">간편 간식 브리또 8종</span>
                            <span class="cost">
                                <span class="price">2,900원</span>
                            </span>
                            <span class="desc">가볍고 든든한 멕시칸 푸드! 까르보나라 치킨 브리또, 콰트로 치킨 브리또 신규 오픈</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item5.png" alt="상품이미지">
                            </a>
                        </div>
                        <a class="info">
                            <span class="name">간편 간식 브리또 8종</span>
                            <span class="cost">
                                <span class="price">2,900원</span>
                            </span>
                            <span class="desc">가볍고 든든한 멕시칸 푸드! 까르보나라 치킨 브리또, 콰트로 치킨 브리또 신규 오픈</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item6.png" alt="상품이미지">
                            </a>
                        </div>
                        <a class="info">
                            <span class="name">간편 간식 브리또 8종</span>
                            <span class="cost">
                                <span class="price">2,900원</span>
                            </span>
                            <span class="desc">가볍고 든든한 멕시칸 푸드! 까르보나라 치킨 브리또, 콰트로 치킨 브리또 신규 오픈</span>
                        </a>
                    </div>
                </li>

                <li>
                    <div class="item">
                        <div class="thumb">
                            <a class="img" style="background-image:url(resources/imgs/listview.png)";>
                                <img src="resources/imgs/item7.png" alt="상품이미지">
                            </a>
                        </div>
                        <a class="info">
                            <span class="name">간편 간식 브리또 8종</span>
                            <span class="cost">
                                <span class="price">2,900원</span>
                            </span>
                            <span class="desc">가볍고 든든한 멕시칸 푸드! 까르보나라 치킨 브리또, 콰트로 치킨 브리또 신규 오픈</span>
                        </a>
                    </div>
                </li>

            </ul>
        </div>
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
