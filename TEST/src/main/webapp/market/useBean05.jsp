<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dan" class="user.GuGuDan"/>
	<%int n = 5;
	for(int i = 1; i< 10; i++){
		out.print(n + " * " + i  + " = " + dan.process(n, i) + "<br>");
	} %>
</body>
</html>