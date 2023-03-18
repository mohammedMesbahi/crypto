package com.example.crypto.dao;

import com.example.crypto.beans.User;
import com.example.crypto.utils.XmlOperations;

import java.util.List;

public class UserDaoXml implements UserDao {
    private List<User> users;
    private XmlOperations<User> xmlOperations;
    public UserDaoXml() {
        xmlOperations= new XmlOperations<User>(User.class);
        users=xmlOperations.load("users.xml");
    }
    @Override
    public User insert(User user) {
        users.add(user);
        System.out.println(user.toString());
        if(xmlOperations.save("users.xml", users))
            return user;
        return null;
    }

    @Override
    public User update(User user) {
        // TODO Auto-generated method stub
        User element = getById(user.getId());
        if(element == null){
            return null;
        }
        for(User user1:users){
            if (user1.getId() == element.getId()){
                user1.setLogin(user.getLogin());
                if(xmlOperations.save("users.xml", users))
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
        users.remove(user);
        if(xmlOperations.save("users.xml", users))
            return user;
        return null;
    }

    @Override
    public User getById(String id) {
        for(User element:users)
            if(element.getId().equals(id))
                return element;
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
        // TODO Auto-generated method stub
        return users;
    }

}
