<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글</title>
		<style>
		  h2{text-align: center;}
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  table{width:1000px; margin:20px auto;}
		  th,td{width:100px; height:40px; text-align: center;}
		</style>
	</head>
	<body>
	  <h2>게시글리스트</h2>
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>제목</th>
	      <th>내용</th>
	      <th>아이디</th>
	      <th>게시날짜</th>
	    </tr>
	    <c:forEach var="board" items="${list}">
	    <tr>
	      <td>${board.bno}</td>
	      <td>${board.btitle}</td>
	      <td>${board.bcontent}</td>
	      <td>${board.id}</td>
	      <td>${board.bdate}</td>
	    </tr>
	    </c:forEach>
	  </table>  
	
	</body>
</html>