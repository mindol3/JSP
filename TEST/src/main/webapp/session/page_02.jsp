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
		String user_id = (String) session.getAttribute("userID");
	
		if(user_id != null){
			out.println("회원전용 페이지 입니다 <br>");
			out.println(user_id + "님 환영합니다");
		}
		else{
			response.sendRedirect("login.jsp");
		}
	%>
	<form action="logout.jsp" method="post">
		<p><input type="submit" value="로그아웃"></p>
	</form>

</body>
</html>