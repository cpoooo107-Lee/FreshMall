<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>신선해</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/admin/goodsEnroll.css" />
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

    <!-- <div id="navbar">
        <div class="navbar_menu">
            <ul class="navbar_menu">
                <div class="dropdown">
                    <button class="dropbtn"><b>기본정보</b></button>
                </div>
                <li class="navbar_menu_item"><b>상품상세</b></li>
            </ul>

            <div class="search">
                <input type="text" class="search_text" placeholder="신선한 바른먹거리">
                <input type="image" src="imgs/search.png" class="btn_search">
            </div>
        </div>
    </div> -->

    <div class="register_body">
        <div class="register_main">
            <h2>상품 등록 페이지</h2>
        </div>

        <!-- <div class="register_contents">
            <ul class="register_theme">
                <li class="basic_info">
                    <a href="#basic_form">기본정보</a>
                </li>
                <li class="detail_info">
                    <a href="#detail_form">상품상세</a>
                </li>
            </ul>
        </div> -->
        
        <div class="register_tab">
            <div class="register_form">
            	<form action="/admin/goodsEnroll.do" method="post" id="enrollForm">
                <table class="detail_tab">
                    <tr>
                        <td>카테고리</td>
                        
                        <td>
                            <select class="1st_category" id="cat1" aria-label="Default select example" name="cat1">
                                <option selected>선택</option>
                                <option value="10">농산물</option>
                                	<option value="11">과일</option>
                                	<option value="12">채소</option>
                                	<option value="13">견과류/말랭이</option>
                                	<option value="14">쌀/잡곡/장류</option>
                                <option value="20">수산물</option>
                                	<option value="21">해산물</option>
                                	<option value="22">어패류</option>
                                	<option value="23">젓갈</option>
                                	<option value="24">생선</option>
                                	<option value="25">김/해초</option>
                                <option value="30">축산물</option>
                                	<option value="31">정육</option>
                                	<option value="32">계란</option>
								<span id="warn_goodsCat1">카테고리를 선택해주세요.</span>
                            </select>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>상품명</td>
                        <td>
                            <input type="text" class="item_name" name="p_name" />
                            <span id="warn_goodsP_name">상품 이름을 입력해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>기본설명</td>
                        <td>
                            <input type="text" class="item_basic_info" name="p_content" />
                            <span id="warn_goodsP_content">기본 설명을 입력해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>배송구분</td>
                        <td>
                            <input type="text" class="how_deliver" name="p_ship"/>
                        </td>
                    </tr>
                    <tr>
                        <td>원산지</td>
                        <td>
                            <input type="text" class="item_origin" name="p_origin"/>
                            <span id="warn_goodsP_origin">원산지를 입력해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>메인이미지</td>
                        <td>
                            <input type="file" id="img1" class="item_main_img" name="p_image1" accept="img/*" required multiple />
                        	<span id="warn_goodsP_image1">메인 이미지를 선택해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>설명이미지</td>
                        <td>
                            <input type="file" id="img2" class="item_info_img" name="p_image2" accept="img/*" required multiple />
                        	<span id="warn_goodsP_image2">설명 이미지를 선택해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>재고</td>
                        <td>
                            <input type="text" class="item_stock" name="p_stock"/>
                            <span id="warn_goodsP_stock">재고를 입력해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>단가</td>
                        <td>
                            <input type="text" class="item_price" name="p_price"/>
                            <span id="warn_goodsP_price">단가를 입력해주세요.</span>
                        </td>
                    </tr>
                </table>
                </form>
            </div>
            
            <div class="register_finish">
                <button id="cancelBtn" class="register_reset_btn">취 소</button>
                <button id="enrollBtn" class="register_complete_btn">등 록</button>
            </div>
        </div>
    </div>
<script>
/* 유효성 검사 통과 유무 변수 */
let cat1Check = false;			//카테고리
let p_nameCheck = false;    	//상품명
let p_contentCheck = false; 	//기본설명
let p_originCheck = false;		//원산지
let p_image1Check = false;		//메인이미지
let p_image2Check = false;		//설명이미지
let p_stockCheck = false;		//재고
let p_priceCheck = false;		//단가
/* 등록 버튼 */
$("#enrollBtn").click(function(){    
    /* 입력값 변수 */
    let cat1 = $('input[name=cat1]').val();	
    let p_name = $('input[name=p_name]').val();				
    let p_content = $('select[name=p_content]').val();       
    let p_origin = $('input[name=p_origin]').val();   
    let p_image1 = $('input[name=p_image1]').val();				
    let p_image2 = $('select[name=p_image2]').val();       
    let p_stock = $('input[name=p_stock]').val();
    let p_price = $('input[name=p_price]').val();				
    
    /* 공란 경고 span태그 */
    let wcat1 = $('#warn_goodsCat1');
    let wp_name = $('#warn_goodsP_name');
    let wp_content = $('#warn_goodsP_content');
    let wp_origin = $('#warn_goodsP_origin');    
    let wp_image1 = $('#warn_goodsP_image1');
    let wp_image2 = $('#warn_goodsP_image2');
    let wp_stock = $('#warn_goodsP_stock');    
    let wp_price = $('#warn_goodsP_price'); 
    
    /* 카테고리 공란 체크 */
    if(cat1 === 'none'){
    	wcat1.css('display', 'block');
    	cat1Check = false;
    } else{
    	wcat1.css('display', 'none');
    	cat1Check = true;
    }
    
    /* 상품명 공란 체크 */
    if(p_name === ''){
    	wp_name.css('display', 'block');
    	p_nameCheck = false;
    } else{
    	wp_name.css('display', 'none');
        p_nameCheck = true;
    }
    
    /* 기본 설명 공란 체크 */
    if(p_content === ''){
    	wp_content.css('display', 'block');
    	p_contentCheck = false;
    } else{
    	wp_content.css('display', 'none');
    	p_contentCheck = true;
    }    
    
    /* 원산지 공란 체크 */
    if(p_origin === ''){
    	wp_origin.css('display', 'block');
    	p_originCheck = false;
    } else{
    	wp_origin.css('display', 'none');
    	p_originCheck = true;
    }    
    
    /* 메인이미지 공란 체크 */
    if(p_image1 === ''){
    	wp_image1.css('display', 'block');
    	p_image1Check = false;
    } else{
    	wp_image1.css('display', 'none');
    	p_image1Check = true;
    }
    
    /* 설명이미지 공란 체크 */
    if(p_image2 === ''){
    	wp_image2.css('display', 'block');
    	p_image2Check = false;
    } else{
    	wp_image2.css('display', 'none');
    	p_image2Check = true;
    }    
    
    /* 재고 공란 체크 */
    if(p_stock === ''){
    	wp_stock.css('display', 'block');
    	p_stockCheck = false;
    } else{
    	wp_stock.css('display', 'none');
    	p_stockCheck = true;
    }  
    
    /* 단가 공란 체크 */
    if(p_price === ''){
    	wp_price.css('display', 'block');
    	p_priceCheck = false;
    } else{
    	wp_price.css('display', 'none');
    	p_priceCheck = true;
    } 

    /* 최종 검사 */
    if(cat1Check && p_nameCheck && p_contentCheck && p_originCheck && p_image1Check && p_image2Check
    		&& p_stockCheck && p_priceCheck){
        $("#enrollForm").submit();    
    } else {
		return;
    }

});
 
/* 취소 버튼 */
$("#cancelBtn").click(function(){
    location.href="/admin/main"
});
 
</script>

</body>
</html>