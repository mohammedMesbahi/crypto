package com.example.crypto.dao;

import com.example.crypto.beans.User;

import java.util.List;

public interface UserDao {
     public User insert(User user);
     public User update(User user);
     public User delete(User user);
     public User getById(String id);
     public User getByLogin(String login);

     public List<User> getAll();


}
