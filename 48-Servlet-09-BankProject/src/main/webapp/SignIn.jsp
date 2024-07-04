<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sign-In Page</title>
<link rel="stylesheet" href="css/signIn.css">
</head>
<body>
    <div class="signin-container">
        <font color="red"> 
     <% String msg = (String) request.getAttribute("msg"); 
     if (msg != null)
    	 out.print(msg);
     %> 
     </font>
        <h2>Sign In</h2>
        <form action="cLogin" method="post">
            <input type="text" name="uname" placeholder="Username" required><br>
            <input type="password" name="pword" placeholder="Password" required><br>
            <input type="submit" value="Sign In">
        </form>
        <a href="ForgotPassword.jsp">Forgot Password?</a>
    </div>
    <div class="decorative-circle circle-1"></div>
    <div class="decorative-circle circle-2"></div>
    <div class="decorative-circle circle-3"></div>
</body>
</html>
