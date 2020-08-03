package com.css.server.service;

import com.css.server.model.User;

public interface IUserService {
    User selectUser(long userId);
}
