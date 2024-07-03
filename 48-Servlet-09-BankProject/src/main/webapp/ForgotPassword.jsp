<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link rel="stylesheet" href="css/forgotPassword.css">
</head>
<body>
    <div class="forgot-password-container">
        <h2>Forgot Password</h2>
        <form action="resetPassword" method="post">
            <input type="email" name="email" placeholder="Enter your email address" required><br>
            <input type="password" name="newPassword" placeholder="Enter new password" required><br>
            <input type="password" name="confirmPassword" placeholder="Confirm new password" required><br>
            <input type="submit" value="Reset Password">
        </form>
        <a href="SignIn.jsp">Back to Sign In</a>
        <div class="particles">
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
        </div>
    </div>
</body>
</html>
