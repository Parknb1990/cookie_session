<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- �ڹٺ��� ����ϱ� ���� ���� -->
<jsp:useBean id="student" class="com.javalec.ex.beanStudent" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- setProperty�� �̿���  �����͸� ������Ʈ<name property�� hong ����> -->
	<jsp:setProperty name="student" property="name" value="hong" />
	<jsp:setProperty name="student" property="age" value="12" />
	<jsp:setProperty name="student" property="grade" value="6" />
	<jsp:setProperty name="student" property="studentNum" value="7" />
	
	<!-- getProperty�� �̿��� �����͸� �޾ƿ� -->
	�̸� : <jsp:getProperty name="student" property="name" /> <br>
	���� : <jsp:getProperty name="student" property="age" /> <br>
	�г� : <jsp:getProperty name="student" property="grade" /> <br>
	��ȣ : <jsp:getProperty name="student" property="studentNum" /> <br>
	

</body>
</html>