<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>관리자 페이지</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/main.css" />
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
          		<!-- 로그인한 상태 -->
            	<c:if test="${member != null}">
            		<c:if test="${(member.name) == '관리자'}">
            		<li class="header_menu_item"><span>${member.name}님</span></li>
	               		<li class="header_menu_item1"><a href="/member/logout.do">로그아웃</a></li>
	                  	<li class="header_menu_item"><a href="/admin/main">관리자 페이지</a></li>
	                </c:if>
            	</c:if>
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
	
	<!-- contents-area -->
    <div class="admin_wrap">
        <!-- 네비영역 -->
        <div class="admin_navi_wrap">
        	<ul>
            	<li>
                	<a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a>
                </li>
                <li>
                   	<a class="admin_list_02" href="/admin/goodsManage">상품 관리</a>
                </li>
          	</ul>
      	</div>
                
      	<div class="admin_content_wrap">
       		<div>관리자 페이지 입니다.</div>
      	</div>
    </div>
 
</body>
</html>