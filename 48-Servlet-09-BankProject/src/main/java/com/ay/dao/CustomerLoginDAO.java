package com.ay.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;

import javax.servlet.ServletRequest;

import com.ay.bean.CustomerBean;
import com.ay.connection.DBConnection;

public class CustomerLoginDAO {

	public Long getAccNo(String uname , String pword) {

		Long accNo = null;

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM CUSTAUTH WHERE username = ? and password = ? ");
			ps.setString(1, uname);
			ps.setString(2, pword);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next())
				accNo = rs.getLong(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return accNo;
	}

	public CustomerBean getAllInformation(Long accNo) {
		CustomerBean cb = null;
		try {
			Connection con = DBConnection.getConnection();
			CallableStatement cs = con.prepareCall("{call Retrieve1(?,?,?,?,?,?,?,?,?,?,?,?)}");

			cs.setLong(1, accNo);
			cs.registerOutParameter(2, Types.INTEGER);
			cs.registerOutParameter(3, Types.VARCHAR);
			cs.registerOutParameter(4, Types.FLOAT);
			cs.registerOutParameter(5, Types.VARCHAR);
			cs.registerOutParameter(6, Types.VARCHAR);
			cs.registerOutParameter(7, Types.VARCHAR);
			cs.registerOutParameter(8, Types.VARCHAR);
			cs.registerOutParameter(9, Types.VARCHAR);
			cs.registerOutParameter(10, Types.INTEGER);
			cs.registerOutParameter(11, Types.VARCHAR);
			cs.registerOutParameter(12, Types.BIGINT);

			cs.execute();
			
			cb = new CustomerBean();
//			****************** Complete this process ******************
			
			cb.setCustName(cs.getString(3));

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
	}
}
