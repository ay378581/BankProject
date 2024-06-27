<%@page import="com.ay.bean.CustomerBean"%>
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
	HttpSession hs = request.getSession(false);
	CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
	if (cb == null) {
		request.setAttribute("msg", "Session Expired");
		request.getRequestDispatcher("index.jsp").include(request, response);
	} else {
	%>
	<center>
		<table>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Id :</td>
				<td><%=cb.getCustId()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Name :</td>
				<td><%=cb.getCustName()%></td>
			</tr>
		</table>
		
		<button>
			<a href="Welcome.jsp">Go Back</a>
		</button>
	</center>
	<%
	}
	%>
</body>
</html>