<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- input 태그의 text유형을 이용하여 아이디,비밀번호 항목작성
		form태그의 action 속성값은 request03_process.jsp로, method 속성값은 get으로 작성
		
		request03_process.jsp파일 생성
		request 내장 객체의 getQueryString() 메소드를 이용하여 전송된 요청 파라미터와 값을 출력
	 --%>
	 
	 <form action="request03_process.jsp" method="get">
	 	<p> 아 이 디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="text" name="passwd"></p>
		<p> <input type="submit" value="전송"></p>
	 </form>
</body>
</html>