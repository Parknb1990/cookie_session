<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- ���� ���� ���� -->
	<%!String id, pw;%>
	
	<!-- id, pw�� sessionLogin.jsp���� ������ �����͸� ���� -->
	<%
		id = request.getParameter("uid");
		pw = request.getParameter("upass");
		
		//.. id�� abcde �׸��� pw�� 12345��� session id�Ӽ��� ���� id�� ����
		if (id.equals("abcde") && pw.equals("12345")) {
			session.setAttribute("id", id);
			response.sendRedirect("sessionWelcome.jsp");
		} else {
			response.sendRedirect("sessionLogin.jsp");
		}
	%>

</body>
</html>