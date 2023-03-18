package com.example.crypto.dao;

import com.example.crypto.beans.User;

import java.util.List;
import java.util.Vector;

public class UserDaoMemory implements UserDao{
    private List<User> users;

    public UserDaoMemory(){
        users=new Vector<>();
        users.add(new User("mehdi@gmail.com","salut","mehdi"));
        users.add(new User("Sarah@gmail.com","bonjour","sarah"));
    }

    @Override
    public User insert(User user) {
        return users.add(user) ? user:null;
    }

    @Override
    public User update(User user) {
        User element = getById(user.getId());
        if(element == null){
            return null;
        }
        for(User user1:users){
            if (user1.getId() == element.getId()){
                user1.setLogin(user.getLogin());
                user1.setName(user.getName());
                user1.setPwd(user.getPwd());
                    return user;
            }
        }
        return null;
    }

    @Override
    public User delete(User user) {
        User element= getById(user.getId());
        if(element==null)
            return null;
        if(users.remove(user))
            return user;
        return null;
    }

    @Override
    public User getById(String login) {
        for (User u :users)
            if(u.getLogin().equals(login))
                return u;
        return null;
    }

    @Override
    public User getByLogin(String login) {
        for (User u:users){
            if (u.getLogin().equals(login)){
                return u;
            }
        }
        return null;
    }

    @Override
    public List<User> getAll() {
        return users;
    }
}
