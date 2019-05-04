package com.services;

import java.sql.*;
import java.sql.SQLException;

import com.bean.ItemBean;
import com.bean.ItemBeanImpl;

public class ItemServicesImpl implements ItemServices {

	ItemBean ib = new ItemBeanImpl();
	
	@Override
	public boolean addItem(String category, int quantity) {
		// TODO Auto-generated method stub
		return ib.addItem(category, quantity);
	}

	@Override
	public ResultSet getAllItems(Connection con) throws SQLException, Exception {
		// TODO Auto-generated method stub
		return ib.getAllItems(con);
	}

	@Override
	public ResultSet getCategoryItems(Connection con, String category) {
		// TODO Auto-generated method stub
		return ib.getCategoryItems(con, category);
	}

}
