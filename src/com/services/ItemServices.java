package com.services;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ItemServices {

	boolean addItem(String category,int quantity);
	
	ResultSet getAllItems() throws SQLException, Exception;
	
	ResultSet getCategoryItems(String category);
}
