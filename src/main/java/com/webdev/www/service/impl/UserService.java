package com.webdev.www.service.impl;

import com.webdev.www.dao.IUserDao;
import com.webdev.www.domain.User;
import com.webdev.www.service.IUserService;

public class UserService implements IUserService {
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserByName(User user) {
		return userDao.getUserByName(user);
	}

	public int insertUser(User user) {
		return userDao.insertUser(user);
	}
}
