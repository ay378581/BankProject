<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #69d2e7, #a7dbd8);
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="email"] {
            width: 400px;
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #69d2e7;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }
        .form-container input[type="reset"] {
            background: #a7dbd8;
        }
        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            opacity: 0.8;
        }
        .form-container .button-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Registration Form</h2>
         <form action="cReg" method="post">
            <label for="customer-name">Customer Name:</label>
            <input type="text" id="customer-name" name="cname">

            <label for="account-number">Account Number:</label>
            <input type="text" id="account-number" name="accNo">

            <label for="customer-id">Customer Id:</label>
            <input type="text" id="customer-id" name="cid">

            <label for="account-type">Account type:</label>
            <input type="text" id="account-type" name="actype">

            <label for="balance">Balance:</label>
            <input type="text" id="balance" name="bal">

            <label for="house-number">Enter House Number:</label>
            <input type="text" id="house-number" name="hno">

            <label for="street-number">Enter Street Number:</label>
            <input type="text" id="street-number" name="sn">

            <label for="city">City:</label>
            <input type="text" id="city" name="cty">

            <label for="state">State:</label>
            <input type="text" id="state" name="st">

            <label for="pincode">Pincode:</label>
            <input type="text" id="pincode" name="pin">

            <label for="mail-id">Mail Id:</label>
            <input type="email" id="mail-id" name="mid">

            <label for="password">Password:</label>
            <input type="password" id="password" name="pass">

            <label for="phone-number">Phone No:</label>
            <input type="text" id="phone-number" name="phone">

            <div class="button-group">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </div>
        </form>
    </div>
</body>
</html>