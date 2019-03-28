<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%	
		//.. getAttrubute�� ��ȯ���� ������ Object
		Object obj1 = session.getAttribute("mySessionName");
		//.. String���� casting
		String mySessionName = (String)obj1;
		out.println(mySessionName+"<br>");
		
		//.. getAttrubute�� ��ȯ���� ������ Object
		Object obj2 = session.getAttribute("myNum");
		//.. Integer�� casting
		Integer myNum = (Integer)obj2;
		out.println(myNum+"<br>");
		
		out.println("**************************"+"<br>");
		
		String sName;
		String sValue;
		
		//.. getAttributeNames() -> ��� Attribute�� �Ӽ��� ��´�
		//.. Enumeration�� ������ �����ͺ��� ���
		Enumeration enumeration = session.getAttributeNames();
		
		//.. myNum�� mySessionName ���
		while(enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
		}
		
		out.println("**************************"+"<br>");
		
		//.. sessionID�� ���� �ϳ��� �����̳ʰ� ����ũ�� id�� �ڵ����� ����
		String sessionID = session.getId();
		out.println("sessionID : "+sessionID+"<br>");
		
		//.. ������ ��ȿ�ð� ���, ��ȿ�ð� Ȯ�� ��� : apache-tomcat-8.5.38\apache-tomcat-8.5.38\conf\web.xml
		int sessionInter = session.getMaxInactiveInterval();
		out.println("sessionInter : "+sessionInter+"<br>");
		
		out.println("**************************"+"<br>");
		
		//.. mySessionName(Ư�� ������) ���� ����
		session.removeAttribute("mySessionName");
		
		//.. mySessionName�� �����߱� ������ myNum�� ���
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
		}
		
		out.println("**************************"+"<br>");
		
		//.. ���ǿ� �ִ� ��� �����͸� ����
		session.invalidate();
		
		//.. ��ȿ�� ������ �ִ��� �˻�
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

</body>
</html>