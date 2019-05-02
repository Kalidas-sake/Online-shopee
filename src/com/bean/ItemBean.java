package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ItemBean {

boolean addItem(String category,int quantity);
	
	ResultSet getAllItems() throws SQLException, Exception;
	
	ResultSet getCategoryItems(String category);
}
