package com.example.crypto.beans;

import java.io.Serializable;
import java.util.Random;

public class User implements Serializable {
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String login;
    private String pwd;
    private String name;

    public User() {
        super();
        Random r =new Random();
        this.id = r.nextInt(1000000)+"";
    }

    public User(String login, String pwd, String name) {
        super();
        Random r =new Random();
        this.id = r.nextInt(1000000)+"";
        this.login = login;
        this.pwd = pwd;
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
