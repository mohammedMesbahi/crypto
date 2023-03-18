package com.example.crypto.business;

import com.example.crypto.beans.User;

public interface Services {
    User login(String login, String password);

    User saveUser(User user);
    User addUser(User user);
    User deleteUser(User user);
    User getUser(String id);
    User getUserByLogin(String login);
}
