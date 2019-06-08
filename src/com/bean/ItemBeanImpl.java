package com.bean;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.DBconnection;

public class ItemBeanImpl implements ItemBean{

	DBconnection db = new DBconnection();
	Connection con;
	
	@Override
	public boolean addItem(Connection con,String name, String desc, float price, String cat,int quant, String thumb) throws SQLException {
		String query = "INSERT INTO items (itemName, itemDesc, itemPrice,thumb, quantity, c_name) VALUES (?, ?,?, ?, ?, ?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, desc);
			pst.setFloat(3, price);
			
			pst.setInt(5, quant);
			pst.setString(4, thumb);
			pst.setString(6, cat);
			return pst.execute();
	
	
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
	public ResultSet getCategoryItems(Connection con, String category) throws SQLException {
		String query = "SELECT * from items where c_name ='"+category+"'";	
		System.out.println(query);
		PreparedStatement pst = con.prepareStatement(query);
		ResultSet rs = pst.executeQuery();
		return rs;
	}

	@Override
	public boolean deleteItem(Connection con, String item) throws SQLException {
		PreparedStatement pst = con.prepareStatement("DELETE FROM items where itemName = ?");
		pst.setString(1, item);
		return pst.execute();
	}

}
