package com.bean;

import java.sql.*;

import com.connection.DBconnection;

public class CategoryBeanImpl implements CategoryBean{

	DBconnection db = new DBconnection();
	Connection con;
	
	@Override
	public boolean createCategory() {
		// TODO Auto-generated method stub
		
		
		return false;
	}

	@Override
	public ResultSet getCategories() throws Exception {
		// TODO Auto-generated method stub
		
		con = db.getConnection();
		String query = "SELECT c_name from categories";
		PreparedStatement pst = con.prepareStatement(query);
		ResultSet rs = pst.executeQuery();
		//con.close();
		return rs;
	}

}
