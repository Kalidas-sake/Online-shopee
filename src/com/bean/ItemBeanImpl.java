package com.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.DBconnection;

public class ItemBeanImpl implements ItemBean{

	DBconnection db = new DBconnection();
	Connection con;
	
	@Override
	public boolean addItem(String category, int quantity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ResultSet getAllItems(Connection con) throws SQLException, Exception {
		String query = "SELECT * from items";	
		PreparedStatement pst = con.prepareStatement(query);
		ResultSet rs = pst.executeQuery();
		//con.close();
		return rs;
	}

	@Override
	public ResultSet getCategoryItems(Connection con, String category) {
		// TODO Auto-generated method stub
		return null;
	}

}
