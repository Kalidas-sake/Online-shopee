package com.services;

import java.sql.*;
import java.sql.SQLException;

public interface ItemServices {

	boolean addItem(String category,int quantity);
	
	ResultSet getAllItems(Connection con) throws SQLException, Exception;
	
	ResultSet getCategoryItems(Connection con,String category);
}
