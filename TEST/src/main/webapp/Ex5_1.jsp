<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Enumeration 클래스를 이용하여 전송된 모든 요청 파라미터 값을 받습니다.
String을 이용하여 전송된 요청파라미터 이름과 값을 저장하여 출력 --%>
	<h3>회원가입</h3>
	 <form action="formEx2_process.jsp" name="member" method="post">
	 <p> 이름 : <input type="text" name="name">
	 <p> 주소 : <input type="text" name="adress" >
	 <p> 이메일 : <input type="text" name="email">
	 <p> <input type="submit" value="가입하기">
	 </form>
</body>
</html>