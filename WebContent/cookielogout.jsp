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
		//.. request객체를 이용해 쿠키를 받아옴
		Cookie[] cookies = request.getCookies();

		//.. cookies가 null이 아니면
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				//.. cookie의 name이 abcde인지 비교
				if (cookies[i].getValue().equals("abcde")) {
					//.. 맞으면 삭제
					cookies[i].setMaxAge(0);
					//.. 변경한 속성은 response객체를 이용해 다시 저장
					response.addCookie(cookies[i]);
				}
			}
		}

		//.. cookieTest.jsp에 abcde가 삭제되었는지 확인
		response.sendRedirect("cookieTest.jsp");
	%>
</body>
</html>