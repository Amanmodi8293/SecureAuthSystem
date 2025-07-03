package com.secureauth.controller;

import com.secureauth.dao.UserDao;
import com.secureauth.model.User;
import com.secureauth.util.PasswordHash;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String plainPassword = request.getParameter("password");
        String role = request.getParameter("role");
        String hashedPassword = PasswordHash.hashPassword(plainPassword);

        User user = new User(name, email, hashedPassword, role);

        UserDao dao = new UserDao();
        boolean result = dao.registerUser(user);

        if (result) {
            response.sendRedirect("login.jsp");
        } else {
            response.getWriter().println("Registration Failed.");
        }
    }
}
