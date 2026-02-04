<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="./doForm.jsp" method="post" name="frm">
			<label>취미</label><br>
			<input type="checkbox" name="hobby" id="game" value="game">
			<label for="game">게임</label>
			<input type="checkbox" name="hobby" id="golf" value="golf">
			<label for="golf">골프</label>
			<input type="checkbox" name="hobby" id="book" value="book">
			<label for="book">독서</label>
			<input type="checkbox" name="hobby" id="jogging" value="jogging">
			<label for="jogging">조깅</label>
			<br>
			
			
			<input type="submit" value="로그인">
		</form>
	</body>
</html>