<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
	   <h2>쿠키삭제</h2>
	   
	    <!-- 쿠키 출력 -->
	  <%
	    Cookie[] cookies = request.getCookies();
	    for(Cookie cookie:cookies){
	    	out.println(cookie.getName()+","+cookie.getValue()+"<br>");
	    }
	  
	  %>
	   
	   <h2>세션 저장하기</h2>
	   <!-- 쿠키삭제 소스 -->
	    <form action="./j03_03.jsp" method="post" name="frm">
	     <input type="text" name="session_id" placeholder="아이디를 입력하세요."><br>
	     <input type="text" name="session_name" placeholder="비밀번호를 입력하세요."><br>
	     <input type="submit" value="쿠키 삭제">
	  </form>
	   
	  <a href='./j03_02.jsp'><button>세션 확인</button></a>
	
	</body>