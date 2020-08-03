package com.css.server.mapper;

import com.css.server.model.User;

public interface IUserDao {
    User selectUser(long id);
}
