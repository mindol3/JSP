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
	
		if(request.isRequestedSessionIdValid() == true){
			out.println("세션 설정이 성공했습니다 <br>");
			out.println(user_id + "님 환영합니다");
		}
		else{
			response.sendRedirect("session.jsp");
		}
	%>
	<form action="session_out.jsp" method="post">
		<p><input type="submit" value="로그아웃"></p>
	</form>

</body>
</html>