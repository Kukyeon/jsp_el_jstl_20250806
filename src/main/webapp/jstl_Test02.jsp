<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습 2</title>
</head>
<body>

	<h2> 자바사용 </h2>
	<% 

		if(10 > 5){
	%>
			<h1>"10은 5보다 크다"</h1>
	<% 
		}else{
	%>
		<h1>"10은 5보다 작다다"</h1>
	<%
		}
	 %>
	<%
		int score = 85;
	
		if( score >= 90 ){
	%>		
		<h1>수</h1>
	<%		
		}else if(score >= 80){
	%>
		<h1>우</h1>
	<%
		}else if(score >= 70){
	%>
		<h1>미</h1>
	<% 
		}else if(score >= 60){
	%>
		<h1>양</h1>
	<%
		}else{
	%>
		<h1>가</h1>
	<%
		}	
	%>	
	<hr>
	<h2>JSTL 사용</h2>
	<!--  JSTL if 문 -->
	<c:if test="${ 10>5 }"> <!-- 조건식은 EL 표기법으로 입력 -->
		<h1>"10은 5보다 크다"</h1>
	</c:if>
	
	<!-- JSTL else 문 -->
	<c:choose>
		<c:when test="${10<5 }">
			<h1>"10은 5보다 크다"</h1>
		</c:when>
		<c:otherwise>
			<h1>"10은 5보다 작다다"</h1>
		</c:otherwise>
	</c:choose>
	
	<!-- JSTL if else if 문 -->
	<c:set var="scr" value="85" />
	<c:choose>
		<c:when test="${scr >= 90}">
			<h1>수</h1>
		</c:when>
		<c:when test="${scr >= 80}">
			<h1>우</h1>
		</c:when>
		<c:when test="${scr >= 70}">
			<h1>미</h1>
		</c:when>
		<c:when test="${scr >= 60}">
			<h1>양</h1>
		</c:when>
		<c:otherwise>
			<h1>가</h1>
		</c:otherwise>
	</c:choose>
	
</body>
</html>