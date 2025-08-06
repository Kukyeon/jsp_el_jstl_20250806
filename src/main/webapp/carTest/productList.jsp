<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>

   <hr>
   <h2>장바구니에 넣을 상품을 선택하세요.</h2>
   <hr>
   <form action="addToCart.jsp" >
      상품종류 :
      <select name="product">
         <option value="스마트폰">스마트폰</option>
         <option value="노트북">노트북</option>
         <option value="아이패드">아이패드</option>
         <option value="무선이어폰">무선이어폰</option>
      </select>
      <br>
      상품색깔 :      
      <select name="color">
         <option value="검정">검정</option>
         <option value="회색">회색</option>
         <option value="청색">청색</option>         
      </select>
      <br>
      상품수량 : <input type="number" name="quantity" size="2" min="1" value="1"><br>  
      <hr>    
      <input type="submit" value="장바구니에 담기">      
   </form>
   
</body>
</html>