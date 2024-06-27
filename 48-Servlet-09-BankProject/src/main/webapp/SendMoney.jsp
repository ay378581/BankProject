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
		
		String msg = (String) request.getParameter("msg");
		if (msg != null)
			out.print(msg);		
	%>
	
	<form action="sendMoney" method="post">
		<input type="hidden" name="sender" value="<%= cb.getAccNo()%>">
		Enter Receiver Account Number : <input type="text" name="rec"><br>
		Enter Amount : <input type="text" name="amt"><br>
		<input type="submit" value="send">
	</form>
	<% } %>
</body>
</html>