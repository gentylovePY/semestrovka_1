package com.giniyatov.net.service.impl;


import com.giniyatov.net.dao.impl.UserDaoImpl;
import com.giniyatov.net.model.Member;
import com.giniyatov.net.service.UserService;
import com.giniyatov.net.util.PasswordUtil;


public class UserServiceImpl implements UserService {

    private final UserDaoImpl userDao = new UserDaoImpl();




    public void save(Member user) {
        user.setPassword(PasswordUtil.encrypt(user.getPassword()));
        userDao.insert(user);
    }


}
