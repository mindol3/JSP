<%@ page import= "java.sql.*"%>

<%
		Connection conn = null;
		
		String url = "jdbc:mariadb://localhost:5000/sample";
		String user = "root";
		String password = "1234";
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);

%>
