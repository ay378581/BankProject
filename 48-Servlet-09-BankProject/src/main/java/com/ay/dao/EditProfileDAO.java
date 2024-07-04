package com.ay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import com.ay.connection.DBConnection;

public class EditProfileDAO {

	private static final String bankCustomer = "UPDATE BANKCUSTOMER SET CUSTNAME = ? , ACCTYPE = ? WHERE ACCNO = ?";
	private static final String customerContact = "UPDATE CustomerContact SET MAILID = ? , PHONENO = ? WHERE ACCNO = ?";
	private static final String customerAddress = "UPDATE CustomerAddress SET CUSTNAME = ? , ACCTYPE = ? WHERE ACCNO = ?";

	public int update(HttpServletRequest req) {
		int k = 0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps1 = con.prepareStatement(bankCustomer);
			PreparedStatement ps2 = con.prepareStatement(customerContact);
			PreparedStatement ps3 = con.prepareStatement(customerAddress);

			// set values in the question mark through httpservlet request

			int p = ps1.executeUpdate();
			int q = ps2.executeUpdate();
			int r = ps3.executeUpdate();

			if (p > 0 && q > 0 && r > 0)
				k = 1;

		} catch (Exception e) {

		}
		return k;
	}
}
