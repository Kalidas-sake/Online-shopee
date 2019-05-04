package com.bean;

import java.sql.*;


public interface ItemBean {

boolean addItem(String category,int quantity);
	
	ResultSet getAllItems(Connection con) throws SQLException, Exception;
	
	ResultSet getCategoryItems(Connection con, String category);
}
