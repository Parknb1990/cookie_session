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
		//.. cookieSet ���Ͽ��� response�� ��Ű ��ü�� �޾Ƽ� cookies �迭�� ����
		Cookie[] cookies = request.getCookies();
		
		for (int i=0; i<cookies.length; i++) {
			//.. cookies�迭���� ��Ű �̸��� �� str�� ����
			String str = cookies[i].getName();
			//.. ���� ��Ű�� �̸��� ��
			if(str.equals("cookieName")) {
				out.println("cookies["+i+"] name : "+cookies[i].getName()+"<br>");
				out.println("cookies["+i+"] value : "+cookies[i].getValue()+"<br>");
			}
		}
	%>
	
	<a href = "cookieDel.jsp">Cookie Delete</a>

</body>
</html>