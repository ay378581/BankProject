<%@page import="com.ay.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Balance</title>
    <link rel="stylesheet" href="css/bankingInfo.css">
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
    <div class="balance-container">
        <h1>Your Balance: <span><%=cb.getBal()%></span></h1>
        <a href="Welcome.jsp" class="back-button">Go Back</a>
    </div>
    <div class="background-circle circle-1"></div>
    <div class="background-circle circle-2"></div>
    <div class="background-circle circle-3"></div>
    <%
    }
    %>
</body>
</html>
