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
		
		//.. id�� abcde �׸��� pw�� 12345��� cookie�� id value�� ����
		if (id.equals("abcde") && pw.equals("12345")) {
			Cookie cookie = new Cookie("id", id);
			//.. ��Ű�� ��ȿ�Ⱓ�� 60�ʷ� ����
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