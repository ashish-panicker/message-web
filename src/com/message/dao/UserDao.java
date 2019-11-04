package com.message.dao;

import com.message.model.User;

public interface UserDao {

	void create(User user);
	
	User findByEmail(String email);
}
