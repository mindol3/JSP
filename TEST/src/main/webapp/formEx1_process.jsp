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
		String id = request.getParameter("name");
		String adress = request.getParameter("adress");
		String email = request.getParameter("email");
		
	%>
	<p> 아이디 : <%=id %>
	<p> 주소 : <%=adress %>
	<p> 이메일 : <%=email %>
</body>
</html>