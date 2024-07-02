package com.ay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.ay.bean.TransactionBean;
import com.ay.connection.DBConnection;

public class TransactionHistoryDAO {

	public ArrayList<TransactionBean> sendingHistory(long accNo) {
		ArrayList<TransactionBean> sal = new ArrayList<>();
		String query = "SELECT * FROM TRANSACTION_HISTORY WHERE SENDERACCOUNTNUMBER = ?";

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setLong(1, accNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				TransactionBean tb = new TransactionBean();
				
				tb.setId(rs.getInt(1));
				tb.setSenderName(rs.getString(3));
				tb.setReceiverName(rs.getString(5));
				tb.setSenderAccNumber(rs.getLong(2));
				tb.setReceiverAccNumber(rs.getLong(4));
				tb.setTransactionAmount(rs.getDouble(6));
				tb.setTransactionDate(rs.getDate(7)); 
				sal.add(tb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return sal;
	}

	public ArrayList<TransactionBean> receivingHistory(long accNo) {
		ArrayList<TransactionBean> ral = new ArrayList<>();
		String query = "SELECT * FROM transaction_history WHERE receiver_accNo = ?";

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setLong(1, accNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				TransactionBean tb = new TransactionBean();
				
				tb.setId(rs.getInt(1));
				tb.setSenderName(rs.getString(3));
				tb.setReceiverName(rs.getString(5));
				tb.setSenderAccNumber(rs.getLong(2));
				tb.setReceiverAccNumber(rs.getLong(4));
				tb.setTransactionAmount(rs.getDouble(6));
				tb.setTransactionDate(rs.getDate(7)); 
				
				ral.add(tb);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ral;
	}

	public ArrayList<TransactionBean> allTransactionHistory(long accNo) {
		ArrayList<TransactionBean> aal = new ArrayList<>();
		String query = "SELECT * FROM transaction_history WHERE sender_accNo = ? OR receiver_accNo = ?";

		try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {

			ps.setLong(1, accNo);
			ps.setLong(2, accNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				TransactionBean tb = new TransactionBean();
				
				tb.setId(rs.getInt(1));
				tb.setSenderName(rs.getString(3));
				tb.setReceiverName(rs.getString(5));
				tb.setSenderAccNumber(rs.getLong(2));
				tb.setReceiverAccNumber(rs.getLong(4));
				tb.setTransactionAmount(rs.getDouble(6));
				tb.setTransactionDate(rs.getDate(7)); 
				
				aal.add(tb);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return aal;
	}
}
