<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- session���� ��ü�� ����ڰ� �������� �ʾƵ� ��밡�� -->
	<%
		//.. ���� �Ӽ��� �ϳ��� ����    �Ӽ� mySessionName, �Ӽ������� mySessionData����
		session.setAttribute("mySessionName", "mySessionData");
		//.. ���� �Ӽ��� �ϳ��� ����    �Ӽ� myNum, �Ӽ������� 12345����
		session.setAttribute("myNum", 12345);
	%>

	<a href = "sessionGet.jsp">session get</a>
</body>
</html>