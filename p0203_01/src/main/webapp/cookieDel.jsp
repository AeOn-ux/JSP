<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 삭제</title>
	</head>
	<body>
		<%
			// 쿠키 모두 가져오기
			Cookie[] cookies = request.getCookies();
		
			// 쿠키 삭제
			if(cookies != null){
				// 배열 for문 사용
				for(Cookie cookie:cookies){
					if(cookie.getName().equals("cook_id")){
						out.println("cook_id가 존재함");
						// 쿠키 시간 설정
						cookie.setMaxAge(0);
						// 쿠키로컬에 저장시켜야 삭제완료됨.
						response.addCookie(cookie);
					}
					
				}
				out.println("-----------------------------------------------------------<br>");
				// 쿠키 모두 삭제
				for(Cookie cookie:cookies){
					out.println(cookie.getName()+"쿠키 삭제<br>");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		
		
		%>
	
	
		<a href="./cookieView.jsp">쿠키 확인하기</a>
		
	</body>
</html>