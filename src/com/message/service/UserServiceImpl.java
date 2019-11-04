package com.message.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.message.dao.UserDao;
import com.message.dao.UserDaoImpl;
import com.message.model.User;

public class UserServiceImpl implements UserService{
	
	private UserDao userDao = new UserDaoImpl();
	private final String SALT = "QWsdsdKJNSKCD90^&%$jhbjj$%#";

	@Override
	public void create(User user) throws NoSuchAlgorithmException {
		user.setPassWord(hashPassword(user.getPassWord()));
		userDao.create(user);
	}

	@Override
	public User findByEmail(String email) {
		return userDao.findByEmail(email);
	}
	
	@Override
	public boolean isValidLogin(User user, String password) throws NoSuchAlgorithmException {
		if(user.getPassWord().equals(hashPassword(password))) {
			return true;
		}
		return false;
	}

	public String hashPassword(String input) throws NoSuchAlgorithmException {
		StringBuilder hash = new StringBuilder();
		MessageDigest sha = MessageDigest.getInstance("SHA-1");
		System.out.println(input.concat(SALT));
		byte[] hashedBytes = sha.digest(input.concat(SALT).getBytes());
		char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
		for (int idx = 0; idx < hashedBytes.length; idx++) {
			byte b = hashedBytes[idx];
			hash.append(digits[(b & 0xf0) >> 4]);
			hash.append(digits[b & 0x0f]);
		}
		return hash.toString();
	}

	
}
