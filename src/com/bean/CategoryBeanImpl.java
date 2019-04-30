package com.bean;

import java.sql.*;

import com.connection.DBconnection;

public class CategoryBeanImpl implements CategoryBean{

	
	@Override
	public boolean createCategory() {
		// TODO Auto-generated method stub
		
		
		return false;
	}

	@Override
	public ResultSet getCategories() throws Exception {
		// TODO Auto-generated method stub
		
		String query = "SELECT c_name from categories";
		
		PreparedStatement pst = DBconnection.getConnection().prepareStatement(query);
		
		ResultSet rs = pst.executeQuery();
		
		return rs;
	}

}
