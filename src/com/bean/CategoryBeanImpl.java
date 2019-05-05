package com.bean;

import java.sql.*;

import com.connection.DBconnection;

public class CategoryBeanImpl implements CategoryBean{

	
	@Override
	public boolean createCategory(Connection con, String category) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement pst = con.prepareStatement("INSERT INTO categories VALUES (?)");
		pst.setString(1, category );
		//System.out.println(category);
		
		
		return pst.execute();
	}

	@Override
	public ResultSet getCategories(Connection con) throws Exception {
		// TODO Auto-generated method stub
		String query = "SELECT c_name from categories";
		PreparedStatement pst = con.prepareStatement(query);
		ResultSet rs = pst.executeQuery();
		//con.close();
		return rs;
	}

	@Override
	public boolean deleteCategory(Connection con, String category) throws Exception {
		PreparedStatement pst = con.prepareStatement("DELETE FROM categories where c_name = ?");
		pst.setString(1, category);
		return pst.execute();
	}

}
