package com.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBeanImpl implements UserBean{

	@Override
	public boolean createUser(Connection con, String email, String password) {
		
		return false;
	}

	@Override
	public ResultSet selectUser(Connection con, String email) {
		
		
		ResultSet rs = null;
		try {
			PreparedStatement pst = con.prepareStatement("SELECT * FROM user WHERE email = ?");
			pst.setString(1, email);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	
}
