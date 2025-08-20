package com.pahana.controller;

import java.io.IOException;
import java.sql.Connection;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pahana.model.User;
import com.pahana.service.UserService;
import com.pahana.DAO.DBConnectionFactory;





@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UserController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (Connection connection = DBConnectionFactory.getConnection()) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            UserService service = new UserService(connection);
            User user = service.login(username, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                if (user.getRole().equals("admin")) {
                    response.sendRedirect("admin-dashboard.jsp");
                } else {
                    response.sendRedirect("user-home.jsp");
                }
            } else {
                request.setAttribute("error", "Invalid credentials");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}


