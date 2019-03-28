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
		//.. cookieSet 파일에서 response한 쿠키 객체를 받아서 cookies 배열에 저장
		Cookie[] cookies = request.getCookies();
		
		for (int i=0; i<cookies.length; i++) {
			//.. cookies배열에서 쿠키 이름을 얻어서 str에 저장
			String str = cookies[i].getName();
			//.. 받은 쿠키의 이름과 비교
			if(str.equals("cookieName")) {
				out.println("cookies["+i+"] name : "+cookies[i].getName()+"<br>");
				out.println("cookies["+i+"] value : "+cookies[i].getValue()+"<br>");
			}
		}
	%>
	
	<a href = "cookieDel.jsp">Cookie Delete</a>

</body>
</html>