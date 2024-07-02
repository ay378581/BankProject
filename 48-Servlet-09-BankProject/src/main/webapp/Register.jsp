<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body {
    font-family: Arial, sans-serif;
}

form {
    max-width: 400px;
    margin: auto;
    padding: 1em;
    border: 1px solid #ccc;
    border-radius: 1em;
}

label {
    display: block;
    margin-top: 1em;
}

input {
    width: 100%;
    padding: 0.5em;
    margin-top: 0.5em;
    margin-bottom: 1em;
    border: 1px solid #ccc;
    border-radius: 0.5em;
}

button {
    padding: 0.7em;
    border: none;
    border-radius: 0.5em;
    background: #007BFF;
    color: white;
    cursor: pointer;
    margin-right: 1em;
}

button[type="reset"] {
    background: #f44336;
}

button:hover {
    opacity: 0.9;
}

</style>
<body>

    <form action="cReg" method="post">
		<table>
			<tr>
				<td>Customer Name :</td>
				<td><input type="text" name="cname"></td>
			</tr>
			<tr>
				<td>Account Number :</td>
				<td><input type="text" name="accNo"></td>
			</tr>
			<tr>
				<td>Customer Id :</td>
				<td><input type="text" name="cid"></td>
			</tr>
			<tr>
				<td>Account type :</td>
				<td><input type="text" name="actype"></td>
			</tr>
			<tr>
				<td>Balance :</td>
				<td><input type="text" name="bal"></td>
			</tr>
			<tr>
				<td>Enter House Number :</td>
				<td><input type="text" name="hno"></td>
			</tr>
			<tr>
				<td>Enter Street Number :</td>
				<td><input type="text" name="sn"></td>
			</tr>
			<tr>
				<td>City :</td>
				<td><input type="text" name="cty"></td>
			</tr>
			<tr>
				<td>State :</td>
				<td><input type="text" name="st"></td>
			</tr>
			<tr>
				<td>Pincode :</td>
				<td><input type="text" name="pin"></td>
			</tr>
			<tr>
				<td>Mail Id :</td>
				<td><input type="text" name="mid"></td>
			</tr>
			<tr>
				<td>Password : </td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>Phone No :</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
				<td><input type="reset"></td>
			</tr>
		</table>
	</form>

</body>
</html>