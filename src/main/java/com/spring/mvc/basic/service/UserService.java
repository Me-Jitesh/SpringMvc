package com.spring.mvc.basic.service;

import com.spring.mvc.basic.dao.UserDao;
import com.spring.mvc.basic.models.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public int CreateUser(Users users) {
        return this.userDao.saveUser(users);
    }
}
