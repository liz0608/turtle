package com.webdev.www.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.webdev.www.dao.IUserDao;
import com.webdev.www.domain.User;

public class UserDao extends SqlSessionDaoSupport implements IUserDao {
	public User getUserByName(User user) {
		return (User) getSqlSession().selectOne(
				"com.webdev.www.dao.impl.UserDao.getUserByName", user);
	}

	public int insertUser(User user) {
		return getSqlSession().insert(
				"com.webdev.www.dao.impl.UserDao.insertUser", user);
	}
}
