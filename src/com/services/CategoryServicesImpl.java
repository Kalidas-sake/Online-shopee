package com.services;

import java.sql.*;

import com.bean.*;

public class CategoryServicesImpl implements CategoryService{

	CategoryBean cb = new CategoryBeanImpl();
	
	@Override
	public boolean createCategory(Connection con, String category) throws Exception {
		// TODO Auto-generated method stub
		return cb.createCategory(con, category);
	}

	@Override
	public ResultSet getCategories(Connection con) throws Exception {
		// TODO Auto-generated method stub
		
		return cb.getCategories(con);
	}

	@Override
	public boolean deleteCategory(Connection con, String category) throws Exception {
		// TODO Auto-generated method stub
		return cb.deleteCategory(con, category) ;
	}

}
