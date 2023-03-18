package com.example.crypto.presentation;

import com.example.crypto.beans.User;
import com.example.crypto.business.DefaultServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ListTodoServlet
 */

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String login = request.getParameter("login");

        if (name ==null || pwd == null || login ==null){
            request.setAttribute("error","all fields are required");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        } else if (name.isEmpty() || pwd.isEmpty() || login.isEmpty()) {
            request.setAttribute("error","all fields are required not empty");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        } else {
            if (DefaultServices.getInstance().getUserByLogin(login) != null){
                request.setAttribute("error","email already registered");
                request.getRequestDispatcher("/register.jsp").forward(request,response);
            } else {
                User user = new User(login,pwd,name);
                DefaultServices.getInstance().addUser(user);
                request.setAttribute("success",user.getName() +"you can login now");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }

        }
    }
}
