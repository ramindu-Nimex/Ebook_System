package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook_app", "root", "RH#2000@nimes");
		} catch (Exception e) {
			System.out.println("Database connection is not success");
		}
		return conn;

	}

}
