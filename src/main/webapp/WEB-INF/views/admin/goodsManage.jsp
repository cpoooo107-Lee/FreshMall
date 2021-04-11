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
        <link rel="stylesheet" href="/resources/css/admin/goodsManage.css" />
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

    <div class="manage_body">
        <div class="manage_main">
            <h2>상품 관리 페이지</h2>
        </div>
        <div class="manage_list">
            <div class="total_item">
                <h3>총 상품 : $ 개</h3>
            </div>
            <div class="manage_search">
                <select class="select_category" aria-label="Default select example">
                    <option>카테고리</option>
                    <option>상품명</option>
                    <option>배송구분</option>
                    <option>원산지</option>
                    <option>수산물</option>
                    <option>재고</option>
                    <option>단가</option>
                </select>
                <input type="text" class="search_text">
                <input type="button" class="search_btn" value="검색">
            </div>
            <div class="manage_table">                
                <table class="manage_tab">                            
                    <thead>
                        <th>번호</th>
                        <th>상품명</th>
                        <th>배송구분</th>
                        <th>원산지</th>
                        <th>재고</th>
                        <th>판매가</th>
                    </thead>
                    <c:forEach items="${goodsManage}" var="goodsManage">
            			<tr>
                			<td><c:out value="${goodsManage.seq}"/></td>
                			<td>
                				<a class="move" href="${goodsManage.seq}">
                					<c:out value="${goodsManage.p_name}"/>
                				</a>
                			</td>
                			<td><c:out value="${goodsManage.p_ship}"/></td>
                			<td><c:out value="${goodsManage.p_origin}"/></td>
                			<td><c:out value="${goodsManage.p_stock}"/></td>
                			<td><c:out value="${goodsManage.p_price}"/></td>
            			</tr>
        			</c:forEach>
                </table>
            </div>
        </div>
        <form id="moveForm" method="get">    
    	</form>

    </div>

<script>
$(document).ready(function(){
    let result = '<c:out value="${result}"/>'
    checkAlert(result);
    
    function checkAlert(result){
        if(result === ''){
            return;
        }
        
        if(result === "enroll success"){
        	alert("등록이 완료되었습니다.");
        }
    }
 
});

let moveForm = $("#moveForm");

$(".move").on("click", function(e){
    e.preventDefault();
    
    moveForm.append("<input type='hidden' name='seq' value='"+ $(this).attr("href")+ "'>");
    moveForm.attr("action", "/admin/lookUp");
    moveForm.submit();
});

</script>

</body>
</html>