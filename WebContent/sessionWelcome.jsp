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
		//.. 열거형에 세션 데이터를 모두 저장
		Enumeration enumeration = session.getAttributeNames();
		
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("abcde")) {
				out.println(sValue+"님 안녕하세요."+"<br>");
			}
		}
	%>
	
	<a href = "sessionLogout.jsp">로그아웃</a>

</body>
</html>