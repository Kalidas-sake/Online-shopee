package com.services;

import java.sql.ResultSet;
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
	public ResultSet getAllItems() throws SQLException, Exception {
		// TODO Auto-generated method stub
		return ib.getAllItems();
	}

	@Override
	public ResultSet getCategoryItems(String category) {
		// TODO Auto-generated method stub
		return ib.getCategoryItems(category);
	}

}
