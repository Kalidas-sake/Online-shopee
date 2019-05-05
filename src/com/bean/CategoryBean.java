package com.bean;

import java.sql.*;

public interface CategoryBean {

	boolean createCategory(Connection con, String category) throws Exception;
	
	ResultSet getCategories(Connection con) throws Exception;

	boolean deleteCategory(Connection con, String category) throws Exception;
}
