<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습1</title>
</head>
<body>
	<%
		String str = "korea";
		request.setAttribute("kor", str);
		//int score = 100;
	%>
	
	내가 태어난 국가는 ${kor } 입니다.
	
	<c:set var="score" value="100" />
	나의 점수 : ${score }
</body>
</html>