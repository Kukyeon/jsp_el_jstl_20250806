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
		// 클라이언트가 보내온 요청 파라미터들을 받아옴
		//quantity는 문자열로 전달되므로 int로 변환
		
		ArrayList<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart");
		// 세션에서 cart라는 이름으로 저장된 장바구니를 불러옴
			//세션에 장바구니가 저장되어 있다면 그걸 사용하고, 없으면 새로 만들어야 함
		
		
		if(cart == null){ // cart가 null값일때만 arraylist 새로 생성
			cart = new ArrayList<ProductDto>();
		}//첫 방문자이거나 세션이 초기화된 경우 cart가 null일 수 있음
		//List<String> cart = new ArrayList<String>(); // 새로운 장바구니 생성
		

		
		
		cart.add(new ProductDto(product, color, quantity)); // 상품추가
		//ProductDto 객체 생성하여 cart에 추가
		request.setAttribute("product", new ProductDto(product, color, quantity));
		
		session.setAttribute("cart", cart); // 세션에 상품 목록 저장
		//cart를 다시 세션에 저장 (상품 추가 후 업데이트)
		
		
		
	
	%>
	
	<h2> 장바구니에 <%= product%>이(가) <%= color %>색으로 <%= quantity %>개 추가 되었습니다.</h2>
	<a href="productList.jsp">상품 더 담기</a><br><br>
	<a href="viewCart.jsp">장바구니 보기</a>

</body>
</html>