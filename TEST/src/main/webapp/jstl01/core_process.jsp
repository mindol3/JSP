<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	<sql:update> 태그로 INSERT 쿼리문 실행하기.
	 --%>
	 
	 <%
	 	request.setCharacterEncoding("utf-8");
	 
	 	String score = request.getParameter("score");
	 %>
	 <sql:setDataSource var="dataSource"
	 	url= "jdbc:mariadb://localhost:5000/jstl"
	 	driver="org.mariadb.jdbc.Driver" user="root" password="1234" />
	 	
	 	<%-- member 테이블의 모든 필드 값을 가져오도록 <sql:update> 태그로 INSERT 문을 작성. --%>
	 	<sql:update dataSource="${dataSource}" var="resultSet">
	 		INSERT INTO student(score) VALUES (?)
	 		<%-- 폼 페이지에서 전송된 아이디, 이름 , 비밀번호를 쿼리문의 물음표에 설정하도록 <sql:param>태그를 작성 --%>
	 		<sql:param value="<%=score%>" />
	 	</sql:update>
	 	<c:import var="url" url="sql_core.jsp" />
	 	${url}
</body>
</html>