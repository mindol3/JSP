<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 선언문 태그 사용 예 : 전역변수 선언 --%>
	<%!
		int count = 0; // 전역변수 count 를 0으로 초기화.
	%>
	Page Count is
	<%
		out.println(++count); // 젼역변수 1증가. 새로고침을 하면 숫자가 증가
	%>
</body>
</html>