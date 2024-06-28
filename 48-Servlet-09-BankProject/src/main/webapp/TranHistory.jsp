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
		request.getRequestDispatcher("SignIn.jsp").include(request, response);
	} else {
		out.println("<h1>Welcome to <br /> <span>Banking</span> <br />Dashboard</h1>");
		out.println("<h2>Hello, " + cb.getCustName() + "!</h2>");
	%>

	<form action="TxHis" method="post">
		<input type="hidden" name="accNo" value="<%=cb.getAccNo()%>">
		<select name="opt">
			<option value="All" >All</option>
			<option value="sending">Sending</option>
			<option value="receiving">Receiving</option>
		</select> 
		<input type="submit">
	</form>
	<%
	}
	%>
</body>
</html>