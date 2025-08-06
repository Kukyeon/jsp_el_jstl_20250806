<%@page import="com.kkuk.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
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
		request.setCharacterEncoding("UTF-8");
		
		String product = request.getParameter("product");
		String color = request.getParameter("color");
		//String quantity = request.getParameter("quantity");
		int quantity = Integer.parseInt(request.getParameter("quantity"));	
		
		
		ArrayList<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart");
		
		if(cart == null){ // cart가 null값일때만 arraylist 새로 생성
			cart = new ArrayList<ProductDto>();
		}
		//List<String> cart = new ArrayList<String>(); // 새로운 장바구니 생성
		

		
		
		cart.add(new ProductDto(product, color, quantity)); // 상품추가
		
		request.setAttribute("product", new ProductDto(product, color, quantity));
		
		session.setAttribute("cart", cart); // 세션에 상품 목록 저장
		
		
		
		
	
	%>
	
	<h2> 장바구니에 <%= product%>이(가) <%= color %>색으로 <%= quantity %>개 추가 되었습니다.</h2>
	<a href="productList.jsp">상품 더 담기</a><br><br>
	<a href="viewCart.jsp">장바구니 보기</a>

</body>
</html>