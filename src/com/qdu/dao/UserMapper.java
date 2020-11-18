package com.qdu.dao;

import java.util.List;

import com.qdu.bean.Admin;
import com.qdu.bean.User;

public interface UserMapper {

	void userRegister(User user);

	List<User> checkUserLogin(User user);

	List<Admin> checkAdminLogin(Admin admin);

	List<User> checkNameCommon(User user);
	
}
