<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Profile</title>
  <link href="css/editProfile.css" rel="stylesheet">
</head>
<body>
  <div class="header">Edit Profile</div>
  <div class="form-container">
    <form action="editProfile" method="post">
      <label for="customer-name">Customer Name:</label>
      <input
        type="text"
        id="customer-name"
        name="cname"
        placeholder="Enter your name"
        required
      />

      <label for="account-number">Account Number:</label>
      <input
        type="text"
        id="account-number"
        name="accNo"
        placeholder="Enter your account number"
        readonly
      />

      <label for="customer-id">Customer Id:</label>
      <input
        type="text"
        id="customer-id"
        name="cid"
        placeholder="Enter your customer ID"
        readonly
      />

      <label for="account-type">Account Type:</label>
      <input
        type="text"
        id="account-type"
        name="actype"
        placeholder="Enter your account type"
      />

      <label for="balance">Balance:</label>
      <input
        type="text"
        id="balance"
        name="bal"
        placeholder="Enter your current balance"
        readonly
      />

      <label for="house-number">House Number:</label>
      <input
        type="text"
        id="house-number"
        name="hno"
        placeholder="Enter your house number"
      />

      <label for="street-number">Street Number:</label>
      <input
        type="text"
        id="street-number"
        name="sn"
        placeholder="Enter your street number"
      />

      <label for="city">City:</label>
      <input type="text" id="city" name="cty" placeholder="Enter your city" />

      <label for="state">State:</label>
      <input
        type="text"
        id="state"
        name="st"
        placeholder="Enter your state"
      />

      <label for="pincode">Pincode:</label>
      <input
        type="text"
        id="pincode"
        name="pin"
        placeholder="Enter your pincode"
      />

      <label for="mail-id">Mail Id:</label>
      <input
        type="email"
        id="mail-id"
        name="mid"
        placeholder="Enter your email address"
      />

      <label for="phone-number">Phone No:</label>
      <input
        type="text"
        id="phone-number"
        name="phone"
        placeholder="Enter your phone number"
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
</body>
</html>
