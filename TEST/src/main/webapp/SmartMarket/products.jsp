<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="market.ver01.dto.Product" %>
<%-- 추가 부분 --%>
<%@ page import="market.ver01.dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="market.ver01.dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display=3">상품목록</h1>
		</div>
	</div>
	<%-- 추가 부분 --%>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<img src="${pageContext.request.contextPath}/resources/images/<%=product.getFilename()%>"
				style = "width: 100%" alt="">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitPrice() %>원
				<p><a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">
				상세 정보</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>