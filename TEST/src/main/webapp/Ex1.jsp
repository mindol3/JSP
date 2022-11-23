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
		out.println(getString()); 
	%>
	<%!
		String data = "Hello, Java Server Page";
		public String getString() {
			return data;
			}
	%>
	
	<br>
	<%!
		String greet = "Hello, Java Server Page";
	%>
	<%!
		public String getStringg() {
			return greet;
			}
	%>
	<%=getStringg()%>
</body>
</html>