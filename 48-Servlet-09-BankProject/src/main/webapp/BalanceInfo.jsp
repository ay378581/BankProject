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
	<h1>
		Your Balance :
		<%=cb.getBal()%></h1>
	<button>
		<a href="Welcome.jsp">Go Back</a>
	</button>
	<%
	}
	%>
</body>
</html>