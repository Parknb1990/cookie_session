<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 자바빈을 사용하기 위해 선언 -->
<jsp:useBean id="student" class="com.javalec.ex.beanStudent" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- setProperty를 이용해  데이터를 업데이트<name property에 hong 저장> -->
	<jsp:setProperty name="student" property="name" value="hong" />
	<jsp:setProperty name="student" property="age" value="12" />
	<jsp:setProperty name="student" property="grade" value="6" />
	<jsp:setProperty name="student" property="studentNum" value="7" />
	
	<!-- getProperty를 이용해 데이터를 받아옴 -->
	이름 : <jsp:getProperty name="student" property="name" /> <br>
	나이 : <jsp:getProperty name="student" property="age" /> <br>
	학년 : <jsp:getProperty name="student" property="grade" /> <br>
	번호 : <jsp:getProperty name="student" property="studentNum" /> <br>
	

</body>
</html>