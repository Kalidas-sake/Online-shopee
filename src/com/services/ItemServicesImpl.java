package com.services;

import java.io.InputStream;
import java.sql.*;

import com.bean.ItemBean;
import com.bean.ItemBeanImpl;

public class ItemServicesImpl implements ItemServices {

	ItemBean ib = new ItemBeanImpl();
	
	@Override
	public boolean addItem(Connection con,String name, String desc, float price, String cat,int quant, String newFileName) throws SQLException {
		// TODO Auto-generated method stub
		return ib.addItem(con, name, desc, price, cat, quant, newFileName);
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

	@Override
	public boolean deleteItem(Connection con, String item) throws SQLException {
		// TODO Auto-generated method stub
		return ib.deleteItem(con, item);
	}

}
