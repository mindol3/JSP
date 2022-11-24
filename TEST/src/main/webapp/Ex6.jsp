<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- input 태그 내에 check 유형을 이용하여 오렌지, 사과, 바나나 항목을 작성합ㄴ디ㅏ.
	form 태그의 action 속성 값은 formEx3_process.jsp 로 작성
	
	formEx3_process.jsp 파일 생성
	request 내장 객체의 getParameterValues() 메서드를 이용하여 전송된 요청 파라미터 값을 전달받아 출력 --%>
	
	
	<form action="formEx3_process.jsp">
	과일 : 오렌지 <input type="checkbox" name="fruit" value="오렌지" checked>
		사과 <input type="checkbox" name="fruit" value="사과">
		바나나 <input type="checkbox" name="fruit" value="바나나"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>