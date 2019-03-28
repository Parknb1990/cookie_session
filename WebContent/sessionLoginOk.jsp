<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 전역 변수 선언 -->
	<%!String id, pw;%>
	
	<!-- id, pw에 sessionLogin.jsp에서 전송한 데이터를 저장 -->
	<%
		id = request.getParameter("uid");
		pw = request.getParameter("upass");
		
		//.. id가 abcde 그리고 pw가 12345라면 session id속성에 변수 id를 저장
		if (id.equals("abcde") && pw.equals("12345")) {
			session.setAttribute("id", id);
			response.sendRedirect("sessionWelcome.jsp");
		} else {
			response.sendRedirect("sessionLogin.jsp");
		}
	%>

</body>
</html>