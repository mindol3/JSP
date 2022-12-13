<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ include file = "conn_db.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String num = request.getParameter("num");
	
	String tableName = "todo_list";
	Statement statement = null;
	
	//String sql = "DELETE FROM " + tableName + " WHERE num = " + num;
	String sql = "UPDATE " + tableName + " SET isChecked = 'true' WHERE num = " + num;
	statement = conn.createStatement();
	int resultInt = statement.executeUpdate(sql);
%>
{ "delete" : "true", "num" : <%=num%> }
