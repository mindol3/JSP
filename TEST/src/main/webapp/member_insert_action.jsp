<%@ page import="java.util.Enumeration" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>

<%
		request.setCharacterEncoding("UTF-8");

		String memberID = request.getParameter("memberID");
		String passwd = request.getParameter("passwd");
		String passwdCheck = request.getParameter("passwdCheck");
		String memberName = request.getParameter("memberName");
		String email = request.getParameter("email");
		String[] interest = request.getParameterValues("interest");
		String data = "";
		for(int i=0; i<interest.length; i++){
			data += interest[i] + " ";
		}
		String zipcode = request.getParameter("zipcode");
		String address01 = request.getParameter("address01");
		String address02 = request.getParameter("address02");
		int birthYear = Integer.parseInt(request.getParameter("birthYear"));
		String birthMonth = request.getParameter("birthMonth");
		String birthDay = request.getParameter("birthDay");
		String mailYN = request.getParameter("mailYN");
		String smsYN = request.getParameter("smsYN");
	
	%>
	<p>
		insert into member values(<%="memberID" %>);
	</p>
	<table class="table table-dark table-striped-columns table-hover">
		<tr>
			<th>name</th>
			<th>value</th>
		</tr>
		<tr>
			<td>memberID</td>
			<td><%=memberID %></td>
		</tr>
		<tr>
			<td>passwd</td>
			<td><%=passwd %></td>
		</tr>
		<tr>
			<td>passwdCheck</td>
			<td><%=passwdCheck %></td>
		</tr>
		<tr>
			<td>memberName</td>
			<td><%=memberName %></td>
		</tr>
		<tr>
			<td>email</td>
			<td><%=email %></td>
		</tr>
		<tr>
			<td>interest</td>
			<td><%=data %></td>
		</tr>
		<tr>
			<td>zipcode</td>
			<td><%=zipcode %></td>
		</tr>
		<tr>
			<td>address01</td>
			<td><%=address01 %></td>
		</tr>
		<tr>
			<td>address02</td>
			<td><%=address02 %></td>
		</tr>
		<tr>
			<td>birthYear</td>
			<td><%=birthYear %></td>
		</tr>
		<tr>
			<td>birthMonth</td>
			<td><%=birthMonth %></td>
		</tr>
		<tr>
			<td>birthDay</td>
			<td><%=birthDay %></td>
		</tr>
		<tr>
			<td>mailYN</td>
			<td><%=mailYN %></td>
		</tr>
		<tr>
			<td>smsYN</td>
			<td><%=smsYN %></td>
		</tr>
	</table>
	<p>IP : <%=request.getRemoteAddr() %></p>
	
</body>
</html>