<%@page import="com.kkuk.dto.BoradDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
</head>
<body>
	<!-- 게시판 글 리스트 -->
	
	<%
		// 게시판 더미(dummy) 데이터 만들기
		
		List<BoradDto> boradList = new ArrayList<BoradDto>();	
		// 게시글(boradDto)를 여러개 담을 수 있는 arraylist 준비 (선언)
		
		
		boradList.add(new BoradDto(1, "안녕하세요. 첫글입니다..", "일순신", "2025-08-01"));
		boradList.add(new BoradDto(2, "안녕하세요. 두번쨰글입니다..", "이순신", "2025-08-02"));
		boradList.add(new BoradDto(3, "안녕하세요. 세번쨰일까..", "삼순신", "2025-08-03"));
		boradList.add(new BoradDto(4, "안녕하세요. 넷쨰입니다..", "사순신", "2025-08-04"));
		boradList.add(new BoradDto(5, "안녕하세요 다섯번쨰입니다." , "감감무소식" , "2025-08-05"));

		request.setAttribute("boradList", boradList);
		
	%>
	
	<h2>자유 게시판 목록</h2>
	<hr>
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날자</th>
		</tr>
		
		<c:forEach var="BoardDto" items="${boradList}">
			<tr>
				<td>${BoardDto.bnum }</td>
				<td>${BoardDto.btitle }</td>
				<td>${BoardDto.bwriter }</td>
				<td>${BoardDto.bdate }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
	
	
	
	
</body>
</html>