<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="market.ver02.dto.Book" %>
<jsp:useBean id="bookDAO" class="market.ver02.dao.BookRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 calss="display=3">상품목록</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Book book = bookDAO.getBookBytId(id);
	%>
		<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=book.getName() %></h3>
				<p><b>저자</b> :<%=book.getAuthor() %>
				<p><b>설명</b> :<%=book.getDescription() %>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=book.getBooktId() %></span>
				<p><b>출판사</b> : <%=book.getPublisher() %>
				<p><b>분류</b> : <%=book.getCategory() %>
				<p><b>재고 수</b> :  <%=book.getUnitsInStock() %>
				<p><b>페이지 수</b> :  <%=book.getTotalPages() %>
				<p><b>출판일</b> :  <%=book.getReleseDate() %>
				<h4><%=book.getUnitPrice() %>원</h4>
				<p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
				<a href="./books.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>