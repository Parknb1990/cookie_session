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
		
		//.. 세션이 삭제되지 않고 남아있는지 검사
		while(enumeration.hasMoreElements()) {
			i++;
			
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
			
		}
		
		//.. while문으로 넘어가지 않았다면 해당 세션이 삭제됨
		if(i==0) 
			out.println("해당 세션이 삭제되었습니다.");
	%>

</body>
</html>