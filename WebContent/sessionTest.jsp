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
		Enumeration enumeration = session.getAttributeNames();
		int i=0;
		
		//.. ������ �������� �ʰ� �����ִ��� �˻�
		while(enumeration.hasMoreElements()) {
			i++;
			
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
			
		}
		
		//.. while������ �Ѿ�� �ʾҴٸ� �ش� ������ ������
		if(i==0) 
			out.println("�ش� ������ �����Ǿ����ϴ�.");
	%>

</body>
</html>