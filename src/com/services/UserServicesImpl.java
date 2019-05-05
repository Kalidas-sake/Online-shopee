package com.services;

import java.sql.Connection;
import java.sql.ResultSet;

import com.bean.UserBean;
import com.bean.UserBeanImpl;

public class UserServicesImpl implements UserServices{

	UserBean ub = new UserBeanImpl();
	
	@Override
	public boolean createUser(Connection con, String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ResultSet selectUser(Connection con, String email) {
		// TODO Auto-generated method stub
		return ub.selectUser(con, email);
	}

}
