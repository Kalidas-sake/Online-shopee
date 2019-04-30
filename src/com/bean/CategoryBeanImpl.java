package com.bean;

import java.sql.*;

import com.connection.DBconnection;

public class CategoryBeanImpl implements CategoryBean{

	Connection con;
	
	@Override
	public boolean createCategory() {
		// TODO Auto-generated method stub
		
		
		return false;
	}

	@Override
	public ResultSet getCategories() throws Exception {
		// TODO Auto-generated method stub
		
		con = DBconnection.getConnection();
		
		
		return null;
	}

}
