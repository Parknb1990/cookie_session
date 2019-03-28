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
		//.. loginOk.jsp에서 response객체를 이용해 저장된 쿠키를 request객체를 통해 쿠키 받기
		Cookie[] cookies = request.getCookies();
		
		for (int i=0; i<cookies.length; i++) {
			//.. cookie id값을 변수 id에 저장
			String id = cookies[i].getValue();
			if(id.equals("abcde")) {
				out.println(id+"님 어서오세요 반갑습니다."+"<br>");
				out.println("<br>");
			}
		}
	%>

	<a href = "cookielogout.jsp">로그아웃</a>
</body>
</html>