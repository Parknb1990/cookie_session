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
		//.. ��Ű ����                                      ��Ű �̸�     ,  ��Ű ���
		Cookie cookie1 = new Cookie("cookieName", "cookieValue");
	    //.. ��Ű ��ȿ�ð��� 1�ð����� ����
		cookie1.setMaxAge(60 * 60);

		response.addCookie(cookie1);
	%>

	<a href="cookieGet.jsp">CookieGet</a>
</body>
</html>