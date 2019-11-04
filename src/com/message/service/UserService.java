package com.message.service;

import java.security.NoSuchAlgorithmException;

import com.message.model.User;

public interface UserService {

	void create(User user) throws NoSuchAlgorithmException;

	User findByEmail(String email);
	
	boolean isValidLogin(User user, String password) throws NoSuchAlgorithmException;

}
