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
		//.. loginOk.jsp���� response��ü�� �̿��� ����� ��Ű�� request��ü�� ���� ��Ű �ޱ�
		Cookie[] cookies = request.getCookies();
		
		for (int i=0; i<cookies.length; i++) {
			//.. cookie id���� ���� id�� ����
			String id = cookies[i].getValue();
			if(id.equals("abcde")) {
				out.println(id+"�� ������� �ݰ����ϴ�."+"<br>");
				out.println("<br>");
			}
		}
	%>

	<a href = "cookielogout.jsp">�α׾ƿ�</a>
</body>
</html>