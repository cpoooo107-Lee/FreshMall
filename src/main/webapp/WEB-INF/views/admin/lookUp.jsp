<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

    <div class="register_body">
        <div class="register_main">
            <h2>상품 조회 페이지</h2>
        </div>

        <div class="register_tab">
            <div class="register_form">
                <table class="detail_tab">
                	<tr>
                    	<td>상품 번호</td>
                        <td>
                        	<input name="seq" readonly="readonly" value='<c:out value="${lookUp.seq}"/>' >
                        </td>
                    </tr>
                    <!--  
                    <tr>
                        <td>카테고리</td>
                        <td>
                        	<input type="text" name="seq" readonly="readonly" value='<c:out value="${pageInfo.cat1}"/>' >
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
                            </select>
                        </td>
                    </tr>
                    -->
                    <tr>
                        <td>상품명</td>
                        <td>
                        	<input name="p_name" readonly="readonly" value='<c:out value="${lookUp.p_name}"/>' >
                        </td>
                    </tr>
                    <tr>
                        <td>기본설명</td>
                        <td>
                        	<input name="p_content" readonly="readonly" value='<c:out value="${lookUp.p_content}"/>' >
                        </td>
                    </tr>
                    <tr>
                        <td>배송구분</td>
                        <td>
                        	<input name="p_ship" readonly="readonly" value='<c:out value="${lookUp.p_ship}"/>' >
                        </td>
                    </tr>
                    <tr>
                        <td>원산지</td>
                        <td>
                        	<input name="p_origin" readonly="readonly" value='<c:out value="${lookUp.p_origin}"/>' >
                        </td>
                    </tr>
                    <tr>
                        <td>메인이미지</td>
                        <td>
                            <img src="<spring:url value='/resources/imgs/${lookUp.p_image1}'/>" />
                            <input type="file" id="img1" class="item_main_img" name="p_image1" eadonly="readonly" accept="img/*" required multiple />
                        </td>
                    </tr>
                    <tr>
                        <td>설명이미지</td>
                        <td>
                        	<img src="<spring:url value='/resources/imgs/${lookUp.p_image2}'/>" />
                        	<input type="file" id="img2" class="item_info_img" name="p_image2" readonly="readonly" accept="img/*" required multiple />
                        </td>
                    </tr>
                    <tr>
                        <td>재고</td>
                        <td>
                        	<input name="p_stock" readonly="readonly" value='<c:out value="${lookUp.p_stock}"/>' >
                        </td>
                    </tr>
                    <tr>
                        <td>단가</td>
                        <td>
                        	<input name="p_price" readonly="readonly" value='<c:out value="${lookUp.p_price}"/>' >
                        </td>
                    </tr>
                </table>
            </div>
            
            <div class="register_finish">
            	<a class="btn" id="manage_btn">목록 페이지</a> 
            	<a class="btn" id="modify_btn">수정하기</a>
            </div>
        </div>
    </div>
    <form id="infoForm" action="/admin/modify" method="get"> 
    	<input type="hidden" id="seq" name="seq" value='<c:out value="${lookUp.seq}"/>'> 
    </form>
<script> 
	let form = $("#infoForm"); 
	
	$("#manage_btn").on("click", function(e){ 
		form.find("#seq").remove(); 
		form.attr("action", "/admin/goodsManage"); 
		form.submit(); 
	}); 
	
	$("#modify_btn").on("click", function(e){ 
		form.attr("action", "/admin/modify"); 
		form.submit(); 
	}); 
</script>

</body>
</html>