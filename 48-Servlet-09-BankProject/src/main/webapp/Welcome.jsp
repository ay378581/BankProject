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
		out.println("<h2>Welcome: " + cb.getCustName() + "</h2>");
	%>

	<a href="CustProfile.jsp">Customer Information</a>
	<br>
	<a href="BalanceInfo.jsp">Check Balance</a>
	<br>
	<a href="SendMoney.jsp">Send Money</a>
	<br>
	<a href="TranHistory.jsp">Transaction History</a>
	<br>
	<a href="EditProfile.jsp">Edit Profile</a>
	<br>
	<a href="Logout.jsp">Logout</a>
	<br>
	<%
	}
	%>
</body>
</html>