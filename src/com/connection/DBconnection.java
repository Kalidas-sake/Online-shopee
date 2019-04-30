package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBconnection {

	static Connection con;
	static PreparedStatement pst;
	
	public static Connection getConnection() throws Exception
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopee", "root", "");
		System.out.println("Connection created");	
		return con;
	}
}
