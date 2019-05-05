package com.services;

import java.sql.Connection;
import java.sql.ResultSet;

public interface UserServices {
	boolean createUser(Connection con, String email, String password);
	
	ResultSet selectUser(Connection con, String email);
}
