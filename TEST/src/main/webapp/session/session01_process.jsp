<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	세션 생성하기.
	1) 전송된 아이디와 비밀버호가 일치하면, 세션 속성이름 userID, userPW에 값을 성정하도록 
	session 내장 객체의 setAttribute() 메서드 작성.
	2) 일치하지 않으면 실패 메시지를 출력.
	 --%>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if (user_id.equals("admin") && user_pw.equals("1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("세션 설정이 성공했습니다.<br>");
			out.println(user_id + "님 환영합니다.");
		} 
		else {
			out.println("세션 설정이 실패했습니다.");
		}
	%>
</body>
</html>