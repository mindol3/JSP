<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="market.ver02.dto.Book" %>
<%-- 추가 부분 --%>
<%@ page import="market.ver02.dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1>상품목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfbooks = dao.getAllBooks();
	%>
	
	<div class="container">
		<div>
			<%
				for(int i = 0; i < listOfbooks.size(); i++) {
					Book book = listOfbooks.get(i);
			%>
			<div>
				<h3>[<%=book.getCategory() %>] <%=book.getName() %></h3>
				<p><%=book.getDescription() %>
				<br>
				<p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>원 
				<p><a href="./book.jsp?id=<%=book.getBooktId() %>" class="btn btn-secondary" role="button">
				상세 정보</a>
				<hr>
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