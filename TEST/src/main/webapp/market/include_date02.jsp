<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>구구단 5단</p>
	<% 
		int n = Integer.parseInt(request.getParameter("num"));
	
	for(int i = 1; i< 10; i++){
		out.print(n + "*" + i  + "=" + (n*i) + "<br>");
	}
	%>