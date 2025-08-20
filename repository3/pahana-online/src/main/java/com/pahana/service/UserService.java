package com.pahana.service;

import java.sql.Connection;

import com.pahana.DAO.UserDAO;
import com.pahana.model.User;

public class UserService {
    private UserDAO userDAO;

    public UserService(Connection connection) {
        userDAO = new UserDAO(connection);
    }

    public User login(String username, String password) throws Exception {
        return userDAO.authenticate(username, password);
    }
}
