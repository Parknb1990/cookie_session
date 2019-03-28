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
		//.. getAttrubute의 반환값은 무조건 Object
		Object obj1 = session.getAttribute("mySessionName");
		//.. String으로 casting
		String mySessionName = (String)obj1;
		out.println(mySessionName+"<br>");
		
		//.. getAttrubute의 반환값은 무조건 Object
		Object obj2 = session.getAttribute("myNum");
		//.. Integer로 casting
		Integer myNum = (Integer)obj2;
		out.println(myNum+"<br>");
		
		out.println("**************************"+"<br>");
		
		String sName;
		String sValue;
		
		//.. getAttributeNames() -> 모든 Attribute의 속성을 얻는다
		//.. Enumeration은 마지막 데이터부터 출력
		Enumeration enumeration = session.getAttributeNames();
		
		//.. myNum과 mySessionName 출력
		while(enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
		}
		
		out.println("**************************"+"<br>");
		
		//.. sessionID는 세션 하나당 컨테이너가 유니크한 id를 자동으로 생성
		String sessionID = session.getId();
		out.println("sessionID : "+sessionID+"<br>");
		
		//.. 세션의 유효시간 출력, 유효시간 확인 경로 : apache-tomcat-8.5.38\apache-tomcat-8.5.38\conf\web.xml
		int sessionInter = session.getMaxInactiveInterval();
		out.println("sessionInter : "+sessionInter+"<br>");
		
		out.println("**************************"+"<br>");
		
		//.. mySessionName(특정 데이터) 세션 삭제
		session.removeAttribute("mySessionName");
		
		//.. mySessionName을 삭제했기 때문에 myNum만 출력
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			
			out.println("sName : "+sName+"<br>");
			out.println("sValue : "+sValue+"<br>");
		}
		
		out.println("**************************"+"<br>");
		
		//.. 세션에 있는 모든 데이터를 삭제
		session.invalidate();
		
		//.. 유효한 세션이 있는지 검사
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

</body>
</html>