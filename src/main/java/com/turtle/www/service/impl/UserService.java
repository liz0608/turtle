package com.turtle.www.service.impl;

import com.turtle.www.dao.IUserDao;
import com.turtle.www.domain.User;
import com.turtle.www.service.IUserService;

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
