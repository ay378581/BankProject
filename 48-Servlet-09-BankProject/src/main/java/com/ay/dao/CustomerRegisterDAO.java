package com.ay.dao;

import java.sql.CallableStatement;
import java.sql.Connection;

import com.ay.bean.CustomerBean;
import com.ay.connection.DBConnection;

public class CustomerRegisterDAO {

	public int register(CustomerBean cb) {
		int k = 0;
		try {
			Connection con = DBConnection.getConnection();
			CallableStatement cs = con.prepareCall("{call Register(?,?,?,?,?,?,?,?,?,?,?,?)}");
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

			if (cs.execute())
				k = 1;

		} catch (Exception e) {
			System.err.println("Customer Register Related Problem");
			e.printStackTrace();
		}

		return k;
	}
}
