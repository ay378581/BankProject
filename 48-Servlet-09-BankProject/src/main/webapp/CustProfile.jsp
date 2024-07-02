<%@page import="com.ay.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Information</title>

<link href="css/custProfile.css" rel="stylesheet">
</head>
<body>
	<%
	HttpSession hs = request.getSession(false);
	CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
	if (cb == null) {
		request.setAttribute("msg", "Session Expired");
		request.getRequestDispatcher("SignIn.jsp").include(request, response);
	} else {
	%>
	<center>
		<h2>Customer Information</h2>
		<table>
			<tr>
				<td>Customer Name:</td>
				<td><%=cb.getCustName()%></td>
			</tr>
			<tr>
				<td>Customer Id:</td>
				<td><%=cb.getCustId()%></td>
			</tr>
			<tr>
				<td>Customer Account Type:</td>
				<td><%=cb.getAccType()%></td>
			</tr>
			<tr>
				<td>Customer House Name:</td>
				<td><%=cb.gethNo()%></td>
			</tr>
			<tr>
				<td>Customer Street Name:</td>
				<td><%=cb.getSname()%></td>
			</tr>
			<tr>
				<td>Customer City Name:</td>
				<td><%=cb.getCty()%></td>
			</tr>
			<tr>
				<td>Customer State Name:</td>
				<td><%=cb.getState()%></td>
			</tr>
			<tr>
				<td>Customer PinCode:</td>
				<td><%=cb.getPin()%></td>
			</tr>
			<tr>
				<td>Customer Main ID:</td>
				<td><%=cb.getMid()%></td>
			</tr>
			<tr>
				<td>Customer Phone Number:</td>
				<td><%=cb.getPhone()%></td>
			</tr>
			<tr>
				<td>Customer Account Number:</td>
				<td><%=cb.getAccNo()%></td>
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
