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
		out.println("<ul>");
		out.println("<li><h2>Welcome: " + cb.getCustName() + "</h2></li>");
		out.println("<li>Your Customer ID is: " + cb.getCustId() + "</li>");
		out.println("<li>Your Balance is: $" + cb.getBal() + "</li>");
		out.println("<li>Your Account Type is: " + cb.getAccType() + "</li>");
		out.println("<li>Your Address:</li>");
		out.println("<ul>");
		out.println("<li>House Number: " + cb.gethNo() + "</li>");
		out.println("<li>Street: " + cb.getSname() + "</li>");
		out.println("<li>City: " + cb.getCty() + "</li>");
		out.println("<li>State: " + cb.getState() + "</li>");
		out.println("<li>PinCode: " + cb.getPin() + "</li>");
		out.println("</ul>");
		out.println("<li>Your Contact Information:</li>");
		out.println("<ul>");
		out.println("<li>Email: " + cb.getMid() + "</li>");
		out.println("<li>Phone Number: " + cb.getPhone() + "</li>");
		out.println("</ul>");
		out.println("</ul>");


		
	}
	%>
</body>
</html>