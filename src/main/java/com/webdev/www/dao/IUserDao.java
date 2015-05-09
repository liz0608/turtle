package com.webdev.www.dao;

import com.webdev.www.domain.User;

public interface IUserDao {
	public User getUserByName(User user);
	
	public int insertUser(User user);
}
