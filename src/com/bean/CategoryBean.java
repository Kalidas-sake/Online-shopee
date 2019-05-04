package com.bean;

import java.sql.*;

public interface CategoryBean {

	boolean createCategory();
	
	ResultSet getCategories(Connection con) throws Exception;
}
