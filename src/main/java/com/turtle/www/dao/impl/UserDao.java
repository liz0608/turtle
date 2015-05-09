package com.turtle.www.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.turtle.www.dao.IUserDao;
import com.turtle.www.domain.User;

public class UserDao extends SqlSessionDaoSupport implements IUserDao {
	public User getUserByName(User user) {
		return (User) getSqlSession().selectOne(
				"com.turtle.www.dao.impl.UserDao.getUserByName", user);
	}

	public int insertUser(User user) {
		return getSqlSession().insert(
				"com.turtle.www.dao.impl.UserDao.insertUser", user);
	}
}
