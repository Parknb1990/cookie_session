<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		//.. �������� �̿��� ������ �޾ƿ´�
		Enumeration enumeration = session.getAttributeNames();
		//.. �����͸� ó������ ������ �˻�
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			//.. sValue�� ���� abcde�� ������ ����
			if(sValue.equals("abcde")) {
				session.removeAttribute(sName);
			}
		}
	%>

	<a href = "sessionTest.jsp">sessionTest</a>
</body>
</html>