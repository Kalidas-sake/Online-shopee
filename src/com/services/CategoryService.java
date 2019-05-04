package com.services;

import java.sql.*;

public interface CategoryService {

	boolean createCategory();
	
	ResultSet getCategories(Connection con) throws Exception;
	
	
}
