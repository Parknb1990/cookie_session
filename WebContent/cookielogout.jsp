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
		//.. request��ü�� �̿��� ��Ű�� �޾ƿ�
		Cookie[] cookies = request.getCookies();

		//.. cookies�� null�� �ƴϸ�
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				//.. cookie�� name�� abcde���� ��
				if (cookies[i].getValue().equals("abcde")) {
					//.. ������ ����
					cookies[i].setMaxAge(0);
					//.. ������ �Ӽ��� response��ü�� �̿��� �ٽ� ����
					response.addCookie(cookies[i]);
				}
			}
		}

		//.. cookieTest.jsp�� abcde�� �����Ǿ����� Ȯ��
		response.sendRedirect("cookieTest.jsp");
	%>
</body>
</html>