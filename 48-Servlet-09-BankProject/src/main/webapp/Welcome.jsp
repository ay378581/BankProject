
<%@page import="com.ay.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Dashboard</title>
    <link href="css/welcome.css" rel="stylesheet">
</head>
<body>
    <div class="navbar">
        <div class="icon">
            <h4 class="logo">Banking Dashboard</h4>
        </div>
        <div class="menu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Design</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <div class="search">
            <input class="srch" type="search" name="" placeholder="Search..." />
            <button class="btn">Search</button>
        </div>
        <div class="user-info">
            <a class="logout-btn" href="Logout.jsp">Logout</a>
        </div>
    </div>

    <div class="content">
        <%
            HttpSession hs = request.getSession(false);
            CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
            if (cb == null) {
                request.setAttribute("msg", "Session Expired");
                request.getRequestDispatcher("index.jsp").include(request, response);
            } else {
                out.println("<h1>Welcome to <br /> <span>Banking</span> <br />Dashboard</h1>");
                out.println("<h2>Hello, " + cb.getCustName() + "!</h2>");
        %>
    </div>

    <div class="functions">
        <div class="card">
            <h3>Customer Information</h3>
            <p>View your personal details.</p>
            <a href="CustProfile.jsp"><button class="btnn">View</button></a>
        </div>
        <div class="card">
            <h3>Check Balance</h3>
            <p>Check your current account balance.</p>
            <a href="BalanceInfo.jsp"><button class="btnn">Check</button></a>
        </div>
        <div class="card">
            <h3>Send Money</h3>
            <p>Transfer funds to another account.</p>
            <a href="SendMoney.jsp"><button class="btnn">Send</button></a>
        </div>
        <div class="card">
            <h3>Transaction History</h3>
            <p>Review your past transactions.</p>
            <a href="TranHistory.jsp"><button class="btnn">View</button></a>
        </div>
        <div class="card">
            <h3>Edit Profile</h3>
            <p>Update your personal information.</p>
            <a href="EditProfile.jsp"><button class="btnn">Edit</button></a>
        </div>
    </div>

    <footer>
        <ul>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
        <p>All rights reserved.</p>
    </footer>

    <%
        }
    %>
</body>
</html>