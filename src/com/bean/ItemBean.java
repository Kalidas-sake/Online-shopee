package com.bean;

import java.io.InputStream;
import java.sql.*;


public interface ItemBean {

	boolean addItem(Connection con,String name, String desc, float price, String cat,int quant, String newFileName) throws SQLException;
	
	ResultSet getAllItems(Connection con) throws SQLException, Exception;
	
	ResultSet getCategoryItems(Connection con, String category);

	boolean deleteItem(Connection con, String item) throws SQLException;
}
