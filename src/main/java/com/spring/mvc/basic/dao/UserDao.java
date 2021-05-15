package com.spring.mvc.basic.dao;

import com.spring.mvc.basic.models.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public int saveUser(Users users) {
        Integer id = (Integer) this.hibernateTemplate.save(users);
        return id;
    }
}
