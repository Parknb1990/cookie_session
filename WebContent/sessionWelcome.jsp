<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%	
		//.. �������� ���� �����͸� ��� ����
		Enumeration enumeration = session.getAttributeNames();
		
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("abcde")) {
				out.println(sValue+"�� �ȳ��ϼ���."+"<br>");
			}
		}
	%>
	
	<a href = "sessionLogout.jsp">�α׾ƿ�</a>

</body>
</html>