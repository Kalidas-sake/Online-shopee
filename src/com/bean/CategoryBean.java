package com.bean;

import java.sql.ResultSet;

public interface CategoryBean {

	boolean createCategory();
	
	ResultSet getCategories() throws Exception;
}
