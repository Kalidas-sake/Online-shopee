package com.services;

import java.sql.*;

import com.bean.*;

public class CategoryServicesImpl implements CategoryService{

	CategoryBean cb = new CategoryBeanImpl();
	
	@Override
	public boolean createCategory() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ResultSet getCategories(Connection con) throws Exception {
		// TODO Auto-generated method stub
		
		return cb.getCategories(con);
	}

}
