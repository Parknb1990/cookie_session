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
		Cookie[] cookies = request.getCookies();
		for (int i=0; i<cookies.length; i++) {
			String str = cookies[i].getName();
			if (str.equals("cookieName")) {
				out.println("name : "+cookies[i].getName()+"<br/>");
				//.. 쿠키 유효기간을 0으로 초기화 -> cookie 삭제
				cookies[i].setMaxAge(0);	
				//..response객체를 이용해 새로운 쿠키를 저장
				response.addCookie(cookies[i]);	
			}
		}
	%>
	
	<a href = "cookieTest.jsp">쿠키확인</a>

</body>
</html>