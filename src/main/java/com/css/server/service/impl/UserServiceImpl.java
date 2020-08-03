package com.css.server.service.impl;

import com.css.server.mapper.IUserDao;
import com.css.server.model.User;
import com.css.server.service.IUserService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;

    public User selectUser(long userId) {
        return userDao.selectUser(userId);
    }
}
