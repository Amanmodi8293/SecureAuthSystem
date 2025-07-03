package com.secureauth.controller;

import com.secureauth.dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CheckEmailServlet")
public class CheckEmailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String email = request.getParameter("email");
        UserDao dao = new UserDao();
        boolean exists = dao.checkEmailExists(email);

        PrintWriter out = response.getWriter();
        if (exists) {
            out.print("Email already registered");
        } else {
            out.print("Email available");
        }
    }
}
