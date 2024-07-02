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
				
			System.out.println(accNo);
			
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
			cb.setCustId(cs.getInt(2));
			cb.setBal(cs.getFloat(4));
			cb.setAccType(cs.getString(5));
			cb.sethNo(cs.getString(6));
			cb.setSname(cs.getString(7));
			cb.setCty(cs.getString(8));
			cb.setState(cs.getString(9));
			cb.setPin(cs.getInt(10));
			cb.setMid(cs.getString(11));
			cb.setPhone(cs.getLong(12));
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
	}
}
