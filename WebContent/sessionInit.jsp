<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- session내부 객체는 사용자가 생성하지 않아도 사용가능 -->
	<%
		//.. 세션 속성을 하나씩 지정    속성 mySessionName, 속성데이터 mySessionData지정
		session.setAttribute("mySessionName", "mySessionData");
		//.. 세션 속성을 하나씩 지정    속성 myNum, 속성데이터 12345지정
		session.setAttribute("myNum", 12345);
	%>

	<a href = "sessionGet.jsp">session get</a>
</body>
</html>