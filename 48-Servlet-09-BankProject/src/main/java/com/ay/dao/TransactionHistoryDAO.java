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
		String query = "SELECT * FROM transaction_history WHERE sender_accNo = ?";

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setLong(1, accNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				TransactionBean tb = new TransactionBean();
				
				tb.setId(rs.getInt("id"));
				tb.setSenderName(rs.getString("sender_name"));
				tb.setReceiverName(rs.getString("receiver_name"));
				tb.setSenderAccNumber(rs.getString("sender_accNo"));
				tb.setReceiverAccNumber(rs.getString("receiver_accNo"));
				tb.setTransactionAmount(rs.getDouble("transaction_amount"));
				tb.setTransactionDate(rs.getDate("transaction_date")); 

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
				
				tb.setId(rs.getInt("id"));
				tb.setSenderName(rs.getString("sender_name"));
				tb.setReceiverName(rs.getString("receiver_name"));
				tb.setSenderAccNumber(rs.getString("sender_accNo"));
				tb.setReceiverAccNumber(rs.getString("receiver_accNo"));
				tb.setTransactionAmount(rs.getDouble("transaction_amount"));
				tb.setTransactionDate(rs.getDate("transaction_date")); 
				
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
				
				tb.setId(rs.getInt("id"));
				tb.setSenderName(rs.getString("sender_name"));
				tb.setReceiverName(rs.getString("receiver_name"));
				tb.setSenderAccNumber(rs.getString("sender_accNo"));
				tb.setReceiverAccNumber(rs.getString("receiver_accNo"));
				tb.setTransactionAmount(rs.getDouble("transaction_amount"));
				tb.setTransactionDate(rs.getDate("transaction_date")); 
				
				aal.add(tb);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return aal;
	}
}
