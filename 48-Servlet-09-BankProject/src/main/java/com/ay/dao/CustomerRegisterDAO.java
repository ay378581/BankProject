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
			/*
			 * 
			 * Write Your Code Here
			 * 
			 * 
			 * 
			 */
			if (cs.execute())
				k = 1;

		} catch (Exception e) {
			System.err.println("Customer Register Related Problem");
			e.printStackTrace();
		}

		return k;
	}
}
