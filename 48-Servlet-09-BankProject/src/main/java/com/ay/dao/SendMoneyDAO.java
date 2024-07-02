package com.ay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Savepoint;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import com.ay.connection.DBConnection;

public class SendMoneyDAO {

	private static final String checkUser = "SELECT * FROM BANKCUSTOMER WHERE ACCNO = ?";
	private static final String updateBal = "UPDATE BANKCUSTOMER SET BALANCE = BALANCE + ? WHERE ACCNO = ? ";
	private static final String TransactionHistory = "INSERT INTO transaction_history VALUES(TXNO.nextval,?,?,?,?,?,?) ";

	public HttpServletRequest send(HttpServletRequest req) {

		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps1 = con.prepareStatement(checkUser);
			PreparedStatement ps2 = con.prepareStatement(updateBal);
			PreparedStatement ps3 = con.prepareStatement(TransactionHistory);

			con.setAutoCommit(false);

			Savepoint sp = con.setSavepoint();

			long senderAccNo = Long.parseLong(req.getParameter("sender"));
			ps1.setLong(1, senderAccNo);

			ResultSet rs = ps1.executeQuery();
			if (rs.next()) {
				String sender = rs.getString(3);
				Float bal = rs.getFloat(4);

				long recAccNo = Long.parseLong(req.getParameter("rec"));
				ps1.setLong(1, recAccNo);
				ResultSet rs1 = ps1.executeQuery();

				if (rs1.next()) {
					String reciever = rs1.getString(3);
					Float amt = Float.parseFloat(req.getParameter("amt"));

					if (amt < bal) {
						ps2.setFloat(1, -amt);
						ps2.setLong(2, senderAccNo);

						int k = ps2.executeUpdate();

						ps2.setFloat(1, amt);
						ps2.setLong(2, recAccNo);

						int q = ps2.executeUpdate();

						if (k > 0 && q > 0) {
							ps3.setLong(1, senderAccNo);
							ps3.setString(2, sender);
							ps3.setLong(3, recAccNo);
							ps3.setString(4, reciever);
							ps3.setFloat(5, amt);
							LocalDateTime ldt = LocalDateTime.now();
							Timestamp ts = Timestamp.valueOf(ldt);
							ps3.setTimestamp(6, ts);

							int tx = ps3.executeUpdate();
							if (tx > 0) 
							{
								req.setAttribute("msg", "Transaction Successfull");
								con.commit();
							}
						} 
						else {
							req.setAttribute("msg", "Transaction Failed");
							con.rollback(sp);
						}

					} else {
						req.setAttribute("msg", "Insufficient Balance ...");
					}
				} else {
					req.setAttribute("msg", "Invalid Receiver Account Number ...");
				}

			} else {
				req.setAttribute("msg", "Invalid Sender Account Number...");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return req;
	}
}
