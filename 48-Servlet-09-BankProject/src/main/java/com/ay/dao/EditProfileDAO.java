package com.ay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import com.ay.connection.DBConnection;

public class EditProfileDAO {

	private static final String bankCustomer = "UPDATE BANKCUSTOMER SET CUSTNAME = ? , ACCTYPE = ? WHERE ACCNO = ?";
	private static final String customerContact = "UPDATE CustomerContact SET MAILID = ? , PHONENO = ? WHERE ACCNO = ?";
	private static final String customerAddress = "UPDATE CustomerAddress SET HNO = ? , Sname = ? , city = ? , state = ? , pincode = ? WHERE ACCNO = ?";

	public int update(HttpServletRequest req) {
		int k = 0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps1 = con.prepareStatement(bankCustomer);
			PreparedStatement ps2 = con.prepareStatement(customerContact);
			PreparedStatement ps3 = con.prepareStatement(customerAddress);

			// set values in the question mark through httpservlet request

			ps1.setString(1, req.getParameter("cname"));
			ps1.setString(2, req.getParameter("actype"));
			ps1.setLong(3, Long.parseLong(req.getParameter("accNo")));

			ps2.setString(1, req.getParameter("mid"));
			ps2.setLong(2, Long.parseLong(req.getParameter("phone")));
			ps2.setLong(3, Long.parseLong(req.getParameter("accNo")));

			ps3.setString(1, req.getParameter("hno"));
			ps3.setString(2, req.getParameter("sn"));
			ps3.setString(3, req.getParameter("cty"));
			ps3.setString(4, req.getParameter("st"));
			ps3.setInt(5, Integer.parseInt(req.getParameter("pin")));
			ps3.setLong(6, Long.parseLong(req.getParameter("accNo")));

			int p = ps1.executeUpdate();
			int q = ps2.executeUpdate();
			int r = ps3.executeUpdate();

			if (p > 0 && q > 0 && r > 0)
				k = 1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
