<%@page import="com.ay.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Send Money</title>

<link href="css/sendMoney.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<%
		HttpSession hs = request.getSession(false);
		CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
		if (cb == null) {
			request.setAttribute("msg", "Session Expired");
			request.getRequestDispatcher("SignIn.jsp").include(request, response);
		} else {
			out.println("<h2>Welcome: " + cb.getCustName() + "</h2>");
			
			String msg = (String) request.getParameter("msg");
			if (msg != null)
				out.print(msg);
			
		%>

		<form action="sendMoney" method="post">
			<input type="hidden" name="sender" value="<%=cb.getAccNo()%>">
			<div class="form-group">
				<input type="text" name="rec"
					placeholder="Enter Receiver Account Number" required>
			</div>
			<div class="form-group">
				<input type="text" name="amt" placeholder="Enter Amount" required>
			</div>
			<div class="form-group">
				<input type="submit" value="Send">
			</div>
		</form>
		<a href="Welcome.jsp" class="back-button">Go Back</a>
		<%
		}
		%>
	</div>
</body>
</html>
