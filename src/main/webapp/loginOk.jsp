<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
	
		request.setAttribute("memberpw", mpw);
		
		if(mid.equals("tiger") && mpw.equals("12345")){	// 로그인 성공
			session.setAttribute("user", mid);
		}
		
	%>
	
	<h2>${sessionScope.user} 님 로그인을 환영합니다 </h2>
	<h3>입력하신 비밀번호는 ${memberpw } 입니다</h3>
</body>
</html>