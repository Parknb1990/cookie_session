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
		//.. 열거형을 이용해 세션을 받아온다
		Enumeration enumeration = session.getAttributeNames();
		//.. 데이터를 처음부터 끝까지 검색
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			//.. sValue의 값이 abcde면 세션을 삭제
			if(sValue.equals("abcde")) {
				session.removeAttribute(sName);
			}
		}
	%>

	<a href = "sessionTest.jsp">sessionTest</a>
</body>
</html>