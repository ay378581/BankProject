package com.ay.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static final String driver_ClassName = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String username = "system";
	private static final String password = "shikhar";

	public static Connection getConnection() {
		Connection con = null;
		try {

			Class.forName(driver_ClassName);
			con = DriverManager.getConnection(url, username, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
