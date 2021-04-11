<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<jsp:useBean id="now" class="java.util.Date" />
</head>
<body>
   <div>
      <h2>error_page.jsp 페이지</h2>
      <hr>
      <table>
         <tr width=100% bgcolor="pink">
            <td>웹 프로그래머에게 문의 해주세요</td>
         </tr>
         <tr>
            ${now}
            <P>
               요청실패 URI: ${pageContext.errorData.requestURI}<br> 상태코드:
               ${pageContext.errorData.statusCode}<br> 예외유형:
               ${pageContext.errorData.throwable }
         </tr>
      </table>
   </div>
</body>

</html>