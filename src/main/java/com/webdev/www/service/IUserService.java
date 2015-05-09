package com.webdev.www.service;

import com.webdev.www.domain.User;

public interface IUserService {
	public User getUserByName(User user);

	public int insertUser(User user);
}
