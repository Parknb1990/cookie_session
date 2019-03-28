<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		//.. 쿠키 생성                                      쿠키 이름     ,  쿠키 밸류
		Cookie cookie1 = new Cookie("cookieName", "cookieValue");
	    //.. 쿠키 유효시간을 1시간으로 설정
		cookie1.setMaxAge(60 * 60);

		response.addCookie(cookie1);
	%>

	<a href="cookieGet.jsp">CookieGet</a>
</body>
</html>