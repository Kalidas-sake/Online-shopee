package com.bean;

import java.sql.Connection;
import java.sql.ResultSet;

public interface UserBean {
	
	boolean createUser(Connection con,String email, String password);
	
	ResultSet selectUser(Connection con, String email);
}
