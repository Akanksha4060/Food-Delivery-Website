package com.food.servlet;

import java.io.IOException;

import com.food.dao.User;
import com.food.dao.UserDao;
import com.food.dao.UserDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDao userDao=new UserDaoImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String email = request.getParameter("email");

	        User user = new User();
	        user.setUsername(username);
	        user.setEmail(email);
	        user.setPassword(password);


			//UserDao userDao = new UserDaoImpl();
	        if (userDao.addUser(user)) {
	            response.sendRedirect("login.jsp?registration=success");
	        } else {
	            response.sendRedirect("register.jsp?error=1");
	        }
	}

}
