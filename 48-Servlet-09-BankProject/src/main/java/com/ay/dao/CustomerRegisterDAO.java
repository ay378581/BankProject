package com.ay.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ay.bean.CustomerBean;
import com.ay.connection.DBConnection;

public class CustomerRegisterDAO {

	public int register(CustomerBean cb) {
		int k = 0;
		try {
			Connection con = DBConnection.getConnection();
			CallableStatement cs = con.prepareCall("{call Register(?,?,?,?,?,?,?,?,?,?,?,?)}");
			PreparedStatement ps = con.prepareStatement("INSERT INTO CUSTAUTH VALUES(?,?,?)");

			cs.setLong(1, cb.getAccNo());
			cs.setInt(2, cb.getCustId());
			cs.setString(3, cb.getCustName());
			cs.setFloat(4, cb.getBal());
			cs.setString(5, cb.getAccType());
			cs.setString(6, cb.gethNo());
			cs.setString(7, cb.getSname());
			cs.setString(8, cb.getCty());
			cs.setString(9, cb.getState());
			cs.setInt(10, cb.getPin());
			cs.setString(11, cb.getMid());
			cs.setLong(12, cb.getPhone());

			ps.setLong(1, cb.getAccNo());
			ps.setString(2, cb.getMid());
			ps.setString(3, cb.getPass());

			int q = ps.executeUpdate();

			if (q > 1) {
				cs.execute();
				k = 1;
			}
			
		} catch (Exception e) {
			System.err.println("Customer Register Related Problem");
			e.printStackTrace();
		}

		return k;
	}
}
