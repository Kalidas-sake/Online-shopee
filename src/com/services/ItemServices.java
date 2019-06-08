package com.services;

import java.io.InputStream;
import java.sql.*;
import java.sql.SQLException;

public interface ItemServices {

	boolean addItem(Connection con,String name, String desc, float price, String cat,int quant, String newFileName) throws SQLException;
	
	ResultSet getAllItems(Connection con) throws SQLException, Exception;
	
	ResultSet getCategoryItems(Connection con,String category) throws SQLException;
	
	boolean deleteItem(Connection con, String item) throws SQLException;
}
