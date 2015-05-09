package com.turtle.www.dao;

import com.turtle.www.domain.User;

public interface IUserDao {
	public User getUserByName(User user);
	
	public int insertUser(User user);
}
