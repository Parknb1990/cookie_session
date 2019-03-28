<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!String id, pw;%>

	<%
		id = request.getParameter("uid");
		pw = request.getParameter("upass");
		
		//.. id가 abcde 그리고 pw가 12345라면 cookie의 id value값 저장
		if (id.equals("abcde") && pw.equals("12345")) {
			Cookie cookie = new Cookie("id", id);
			//.. 쿠키의 유효기간을 60초로 저장
			cookie.setMaxAge(60);
			response.addCookie(cookie);
			
			//.. forward
			response.sendRedirect("cookieWelcome.jsp");
		} else {
			response.sendRedirect("cookieLogin.jsp");
		}
	%>

</body>
</html>