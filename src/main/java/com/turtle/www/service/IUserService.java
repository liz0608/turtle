package com.turtle.www.service;

import com.turtle.www.domain.User;

public interface IUserService {
	public User getUserByName(User user);

	public int insertUser(User user);
}
