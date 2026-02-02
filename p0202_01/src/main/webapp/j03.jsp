<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>폼페이지2</title>
	</head>
	<body>
		<h2>회원가입</h2>
		<form action="/p0202_01/Pro4" method='Post'>
			<input type='text' name='id' placeholder='아이디를 입력하세요'>
			<br>
			<input type='text' name='pw' placeholder='패스워드 입력하세요'>
			<br>
			<input type='text' name='name' placeholder='이름을 입력하세요'>
			<br>
			<h4>취미</h4>
			<input type='checkbox' id='game' name='hobby' value='게임'>
			<label for='game'>게임</label>
			<input type='checkbox' id='golf' name='hobby' value='골프'>
			<label for='golf'>골프</label>
			<input type='checkbox' id='swin' name='hobby' value='수영'>
			<label for='swin'>수영</label>
			<input type='checkbox' id='run' name='hobby' value='조깅'>
			<label for='run'>조깅</label>
			<input type='checkbox' id='book' name='hobby' value='독서'>
			<label for='book'>독서</label>
			
			<input type='submit' value='전송'>
			
		</form>
	</body>
</html>