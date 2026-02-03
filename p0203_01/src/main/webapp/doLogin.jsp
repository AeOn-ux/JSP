<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
	</head>
	<body>
	<!-- 스크립트릿, 표현식, 선언식, 지시자, 주석, 액션태그 -->
		<%-- jsp 주석 
		
		<% %> : 스크립트
		<%= %> : 표현식
		<%! %> : 선언식
		<%@ %> : 지시자
	
		request.getParameter : 1 개의 데이터 받기
		request.getParameterValues : checkbox 여러개 받기
	
		--%>
		
		<H2>로그인 결과</H2>
		<P>아이디 : <%= request.getParameter("id") %> </P>	
		<P>비밀번호 : <%= request.getParameter("pw") %></P>
		<%
			String cookie_id = request.getParameter("id");
			String cook_save ="아이디 저장을 하지 않습니다.";
			if(request.getParameterValues("cook_save")!=null){
				cook_save = request.getParameterValues("cook_save")[0];
				// 쿠키 저장을 시켜주면 됨.
				//쿠키객체선언
				Cookie cookie = new Cookie("cookie_id",cookie_id);
				//쿠키시간설정
				cookie.setMaxAge(60*60);
				//쿠키저장
				response.addCookie(cookie);
			}else{
				// 쿠키 삭제를 시켜주면 됨.
				Cookie[] cookies = request.getCookies();
				for(Cookie cookie:cookies){
				// 쿠키 key만 삭제
					if(cookie.getName().equals("cokie_id")){
					//시간설정
					cookie.setMaxAge(0);
					//쿠키저장
					response.addCookie(cookie);
					
					}
				}
			}
		%>
		
		<%-- 아이디 저장이 클릭이 되어 있으면, 쿠키 저장 --%>	
		<%-- cookie_id --%>		
		
		<a href="./login.jps"><button>로그인</button></a>
		
		
	</body>
</html>