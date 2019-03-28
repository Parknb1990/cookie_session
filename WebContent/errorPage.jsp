<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 예외처리를 위한 isErrorPage 이 페이지가 예외처리 페이지임을 알려준다 -->
<%@ page isErrorPage="true" %>

<!-- status에 200 상태값을 입력해 정상적인 페이지라는 것을 알려준다 -->
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 예외처리 메시지 출력 -->
	예외페이지입니다.
	<%= exception.getMessage() %>
	
</body>
</html>