<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입</title>
        <meta name="description" content="portflolio">
        <meta name="author" content="Soori">
        
        <src="https://kit.fontawesome.com/933a22a272.js" crossorigin="anonymous"></src=>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
        rel="stylesheet" />
        <link rel="shortcut icon" type="image/x-icon" href="/resources/imgs/favicon.png"/>
        <link rel="stylesheet" href="/resources/css/member/join.css" />
        <script src="main.jsp" defer></script>
        
    <script
  			src="https://code.jquery.com/jquery-3.4.1.js"
  			integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  			crossorigin="anonymous">
    </script>
    
    </head>
</head>

<body>
    <form id="join_form" method="post">
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
    
    <div class="main" >      
        <header>         
            <div class="head">
                <h2>회원가입</h2>
            </div>
        </header>        
        <div class="input">
            <div class="input_id">               
                <input placeholder="   ID" type="text" class="id_input" name="id"></input>
                <br><span class="id_input_re_1">사용 가능한 아이디입니다.</span> 
                <br><span class="id_input_re_2">아이디가 이미 존재합니다.</span>
                <span class="final_id_ck">아이디를 입력해주세요.</span>
            </div>
            <div class="input_pw">
                <input placeholder="   비밀번호" type="password" class="pw1_input" name="pw1"></input>
            	<span class="final_pw1_ck">비밀번호를 입력해주세요.</span>
            </div>
            <div class="check_pw">
            	<input placeholder="   비밀번호 확인" type="password" class="pw2_input" name="pw2"></input>
            	<span class="final_pw2_ck">비밀번호 확인을 입력해주세요.</span>
            	<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
            </div>
            <div class="cus_name">   
            	<input placeholder="   이름" type="text" class="name_input" name="name"></input>
            	<span class="final_name_ck">이름을 입력해주세요.</span>
            </div>
            <div class="phone_num">   
                <input placeholder="   전화번호" type="tel" class="tel_input" name="tel" 
                        pattern="(010)-[0-9]{4}-[0-9]{4}" required></input>
                <span class="final_tel_ck">전화번호를 입력해주세요.</span>
            </div>
            <div class="cus_address">
                <input type="text" id="sample6_postcode" placeholder="   우편번호" class="zcode_input" name="zcode">
                <input type="button" id="zip_code" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" id="sample6_address" placeholder="   주소" class="adr1_input" name="address1"><br>
                <input type="text" id="sample6_detailAddress" placeholder="   상세주소" class="adr2_input" name="address2" ><br>
				<span class="final_addr_ck">주소를 입력해주세요.</span>
				<input type="text" id="sample6_extraAddress" placeholder="   참고항목">
				
                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                <script>
                    function sample6_execDaumPostcode() {
                        new daum.Postcode({
                            oncomplete: function(data) {
                                var addr = ''; // 주소 변수
                                var extraAddr = ''; // 참고항목 변수

                                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                    addr = data.roadAddress;
                                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                    addr = data.jibunAddress;
                                }

                                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                if(data.userSelectedType === 'R'){
                                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                        extraAddr += data.bname;
                                    }
                                    // 건물명이 있고, 공동주택일 경우 추가한다.
                                    if(data.buildingName !== '' && data.apartment === 'Y'){
                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                    }
                                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                    if(extraAddr !== ''){
                                        extraAddr = ' (' + extraAddr + ')';
                                    }
                                    // 조합된 참고항목을 해당 필드에 넣는다.
                                    document.getElementById("sample6_extraAddress").value = extraAddr;
                                
                                } else {
                                    document.getElementById("sample6_extraAddress").value = '';
                                }

                                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                document.getElementById('sample6_postcode').value = data.zonecode;
                                document.getElementById("sample6_address").value = addr;
                                // 커서를 상세주소 필드로 이동한다.
                                document.getElementById("sample6_detailAddress").focus();
                            }
                        }).open();
                    }
                </script>
            </div>
            <div class="cus_email">   
                <input placeholder="   이메일" type="email" class="email_input" name="email"></input>
            	<span class="final_email_ck">이메일을 입력해주세요.</span>
            </div>
            <div class="joinbtn">
                <input type="button" class="join_btn" value="회원가입">
            </div>         
        </div>
        
    	<div class="Easy_join">
        	<h2>기존 계정으로 회원가입</h2>
        	<ul class="easybtn">            
            	<button><i class="naver"></i><span>NAVER 계정으로 회원가입</span></button>
            	<button><i class="kakao"></i><span>KAKAO 계정으로 회원가입</span></button>
        	</ul>         
    	</div>
	</div>
	
</form>

<script> 
/* 유효성 검사 통과유무 변수 */
var idCheck = false;		// 아이디
var idckCheck = false;     	// 아이디 중복 검사
var pw1Check = false;     	// 비번
var pw2Check = false;    	// 비번 확인
var pwckCheck = false;  	// 비번 확인 일치 확인
var nameCheck = false;     	// 이름
var telCheck = false;		// 전화번호
var addressCheck = false   	// 주소
var emailCheck = false;     // 이메일

$(document).ready(function(){ 
   //회원가입 버튼(회원가입 기능 작동) 
    $(".join_btn").click(function(){ 
    	/* 입력값 변수 */
    	var id = $('.id_input').val();				// id 입력란
        var pw1 = $('.pw1_input').val();            // 비밀번호 입력란
        var pw2 = $('.pw2_input').val();          	// 비밀번호 확인 입력란
        var name = $('.name_input').val();         	// 이름 입력란
        var tel = $('.tel_input').val(); 			// 전화번호 입력란
        var address2 = $('.adr2_input').val();   	// 주소 입력란
        var email = $('.email_input').val();        // 이메일 입력란
        
        /* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        
        /* 비밀번호 유효성 검사 */
        if(pw1 == ""){
            $('.final_pw1_ck').css('display','block');
            pw1Check = false;
        }else{
            $('.final_pw1_ck').css('display', 'none');
            pw1Check = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pw2 == ""){
            $('.final_pw2_ck').css('display','block');
            pw2Check = false;
        }else{
            $('.final_pw2_ck').css('display', 'none');
            pw2Check = true;
        }
        
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
      	
      	/* 전화번호 유효성 검사 */
        if(tel == ""){
            $('.final_tel_ck').css('display','block');
            telCheck = false;
        }else{
            $('.final_tel_ck').css('display', 'none');
            telCheck = true;
        }

      	/* 주소 유효성 검사 */
      	if(address2 == ""){
      		$('.final_addr_ck').css('display','block');
          	addressCheck = false;
      	}else{
          	$('.final_addr_ck').css('display', 'none');
          	addressCheck = true;
      	}

      	/* 이메일 유효성 검사 */
      	if(email == ""){
      		$('.final_email_ck').css('display','block');
          	emailCheck = false;
      	}else{
          	$('.final_email_ck').css('display', 'none');
          	emailCheck = true;
      	}
      	
      	/* 최종 유효성 검사 */
        if(idCheck&&idckCheck&&pw1Check&&pw2Check&&pwckCheck&&nameCheck&&telCheck&&addressCheck&&emailCheck){
        	$("#join_form").attr("action", "/member/join");
            $("#join_form").submit();
        }
		
      	return false;
	});
        
}); 

//아이디 중복검사 
$('.id_input').on("propertychange change keyup paste input", function(){ 
	var id = $('.id_input').val(); // .id_input에 입력되는 값 
	var data = {id : id} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)' 
	
	$.ajax({ 
		type : "post", 
		url : "/member/memberIdChk", 
		data : data,
		success : function(result){ 
			if(result != 'fail'){ 
				$('.id_input_re_1').css("display","inline-block"); 
				$('.id_input_re_2').css("display", "none");
				idckCheck = true;
			} else { 
				$('.id_input_re_2').css("display","inline-block"); 
				$('.id_input_re_1').css("display", "none");
				idckCheck = false;
			}
			
		}// success 종료
	}); // ajax 종료

});// function 종료

//비밀번호 확인 일치 유효성 검사
$('.pw2_input').on("propertychange change keyup paste input", function(){
	var pw1 = $('.pw1_input').val();
    var pw2 = $('.pw2_input').val();
    $('.final_pw2_ck').css('display', 'none');
 
    if(pw1 == pw2){
        $('.pwck_input_re_1').css('display','block');
        $('.pwck_input_re_2').css('display','none');
        pwckCheck = true;
    }else{
        $('.pwck_input_re_1').css('display','none');
        $('.pwck_input_re_2').css('display','block');
        pwckCheck = false;
    }
    
});

</script>

</body>
</html>