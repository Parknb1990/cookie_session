<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- ����ó���� ���� isErrorPage �� �������� ����ó�� ���������� �˷��ش� -->
<%@ page isErrorPage="true" %>

<!-- status�� 200 ���°��� �Է��� �������� ��������� ���� �˷��ش� -->
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- ����ó�� �޽��� ��� -->
	�����������Դϴ�.
	<%= exception.getMessage() %>
	
</body>
</html>