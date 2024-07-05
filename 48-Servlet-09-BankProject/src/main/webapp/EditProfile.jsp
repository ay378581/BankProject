<!DOCTYPE html>
<%@page import="com.ay.bean.CustomerBean"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Profile</title>
<link href="css/editProfile.css" rel="stylesheet">
</head>
<body>
	<%
	
	String msg = (String) request.getAttribute("msg");
	if (msg != null)
		out.print(msg);
	
	HttpSession hs = request.getSession(false);
	CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
	if (cb == null) {
		request.setAttribute("msg", "Session Expired");
		request.getRequestDispatcher("SignIn.jsp").include(request, response);
	} 
	else 
	{ %>
  <div class="header">Edit Profile</div>
  <div class="form-container">
    <form action="editProfile" method="post">
      <label for="customer-name">Customer Name:</label>
      <input
        type="text"
        id="customer-name"
         value="<%=cb.getCustName() %>"
        name="cname"
        required
      />

      <label for="account-number">Account Number:</label>
      <input
        type="text"
        id="account-number"
        name="accNo"
        value="<%=cb.getAccNo() %>"
        readonly
      />

      <label for="customer-id">Customer Id:</label>
      <input
        type="text"
        id="customer-id"
        name="cid"
        value="<%=cb.getCustId() %>"
        readonly
      />

      <label for="account-type">Account Type:</label>
      <input
        type="text"
        id="account-type"
        name="actype"
        value="<%=cb.getAccType() %>"
        
      />

     <!--   <label for="balance">Balance:</label>-->
      <input
        type="hidden"
        id="balance"
        name="bal"
        value="<%=cb.getBal() %>"
        readonly
      />

      <label for="house-number">House Number:</label>
      <input
        type="text"
        id="house-number"
        name="hno"
        value="<%=cb.gethNo() %>"
       
      />

      <label for="street-number">Street Number:</label>
      <input
        type="text"
        id="street-number"
        name="sn"
        value="<%=cb.getSname() %>"
     
      />

      <label for="city">City:</label>
      <input 
      	type="text" 
      	id="city" 
      	name="cty" 
      	value="<%=cb.getCty() %>"
      	 />

      <label for="state">State:</label>
      <input
        type="text"
        id="state"
        name="st"
       value="<%=cb.getState() %>"
      />

      <label for="pincode">Pincode:</label>
      <input
        type="text"
        id="pincode"
        name="pin"
        value="<%=cb.getPin() %>"
      />

      <label for="mail-id">Mail Id:</label>
      <input
        type="email"
        id="mail-id"
        name="mid"
        value="<%=cb.getMid() %>"
      />

      <label for="phone-number">Phone No:</label>
      <input
        type="text"
        id="phone-number"
        name="phone"
        value="<%=cb.getPhone() %>"
      />

      <div class="button-group">
        <input type="submit" value="Save Changes" />
        <input type="reset" value="Reset" />
      </div>
    </form>

    <div class="particles">
      <div class="particle"></div>
      <div class="particle"></div>
      <div class="particle"></div>
      <div class="particle"></div>
    </div>
  </div>

  <a href="Welcome.jsp" class="back-button">Go Back</a>
  
  <% } %>
</body>
</html>
