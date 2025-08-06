<%@page import="com.kkuk.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        body {
            font-family: "Noto Sans KR", sans-serif;
            background-color: #f9f9f9;
            padding: 40px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        thead {
            background-color: #f1f1f1;
        }

        th, td {
            padding: 12px 16px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            font-weight: bold;
        }

        td:nth-child(1),
        td:nth-child(4),
        th:nth-child(1),
        th:nth-child(4) {
            text-align: center;
            width: 80px;
        }

        td:nth-child(3),
        th:nth-child(3) {
            text-align: center;
            width: 150px;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body>
	
	<h2>내 장바구니 상품 목록</h2>
	<hr>
	<%
	
		List<ProductDto> cart = (List<ProductDto>)session.getAttribute("cart");
	
		request.setAttribute("cart", cart);
		
		
		%>
		
		<c:choose>
		<c:when test="${empty sessionScope.cart}">
			<h2>장바구니가 비어있습니다</h2>
		</c:when>
		<c:otherwise>
		<hr>
	<table border="1" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th>No.</th>
				<th>제품</th>
				<th>색갈</th>
				<th>개수</th>
			</tr>
		</thead>
		
		<c:forEach var="Dto" items="${cart}" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${Dto.product }</td>
				<td>${Dto.color }</td>
				<td>${Dto.quantity }</td>
			</tr>
		</c:forEach>
	</table>
		
		
		
		
		</c:otherwise>
		</c:choose>
		<br></a><a href="removeCart.jsp">장바구니 비우기</a><br><br>
		
	
	<a href="productList.jsp">상품 목록으로 돌아가기</a>
</body>
</html>