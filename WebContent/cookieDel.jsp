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
				//.. ��Ű ��ȿ�Ⱓ�� 0���� �ʱ�ȭ -> cookie ����
				cookies[i].setMaxAge(0);	
				//..response��ü�� �̿��� ���ο� ��Ű�� ����
				response.addCookie(cookies[i]);	
			}
		}
	%>
	
	<a href = "cookieTest.jsp">��ŰȮ��</a>

</body>
</html>