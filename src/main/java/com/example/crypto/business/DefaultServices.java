package com.example.crypto.business;

import com.example.crypto.beans.User;
import com.example.crypto.dao.UserDao;
import com.example.crypto.dao.UserDaoXml;

public class DefaultServices implements Services{
    private static DefaultServices instance = null;
    private UserDao userDao;

    public DefaultServices(UserDao userDao) {
        this.userDao = userDao;
    }

    public static DefaultServices getInstance() {
        if (instance == null){
            instance = new DefaultServices(new UserDaoXml());
        }
        return instance;
    }

    @Override
    public User login(String login, String password) {
        User u = userDao.getByLogin(login);
        if (u == null){
            return null;
        }else if (u.getPwd().equals(password)){
            return u;
        } else {
            return null;
        }
    }

    @Override
    public User saveUser(User user) {
        return userDao.insert(user);
    }

    @Override
    public User addUser(User user) {
        return userDao.insert(user);
    }

    @Override
    public User deleteUser(User user) {
        return userDao.delete(user);
    }

    @Override
    public User getUser(String id) {
        return userDao.getById(id);
    }

    @Override
    public User getUserByLogin(String login) {
        return userDao.getByLogin(login);
    }
}
