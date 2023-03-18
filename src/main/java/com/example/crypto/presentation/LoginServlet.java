package com.example.crypto.presentation;

import com.example.crypto.beans.User;
import com.example.crypto.business.DefaultServices;
import jakarta.servlet.http.HttpSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ListTodoServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String pwd = request.getParameter("pwd");

        if (login !=null && pwd!=null){
            User u = DefaultServices.getInstance().login(login,pwd);
            if (u == null){
                request.setAttribute("error","wrong credentials");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            } else {
                request.getSession().setAttribute("user", u.getName());
                request.getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request,response);
            }
        } else {
            request.setAttribute("error","all fields are  required");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }

    }
}
