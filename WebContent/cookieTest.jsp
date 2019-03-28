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
		//.. request객체를 이용해 저장된 쿠키 받기
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for (int i=0; i<cookies.length; i++) {
				//.. 처음에 생성했던 cookie가 cookieDel.jsp에서 삭제되어 cookieName이 출력되지 않는다.
				//.. 서버쪽 세션관련 쿠키만 존재
				out.println(cookies[i].getName()+"<br>");
				out.println(cookies[i].getValue()+"<br>");
			}
		}
	%>
</body>
</html>