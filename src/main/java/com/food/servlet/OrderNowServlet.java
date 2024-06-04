package com.food.servlet;

import java.io.IOException;

import com.food.dao.Orderr;
import com.food.dao.UserDao;
import com.food.dao.UserDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderPlacedServlet
 */
public class OrderNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UserDao userDao=new UserDaoImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderNowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String number = request.getParameter("number");
        String foodName = request.getParameter("foodName");
        String extra = request.getParameter("extra");
        String orderCount = request.getParameter("orderCount");
        String address = request.getParameter("address");
        String msg = request.getParameter("msg");

        Orderr order=new Orderr();
        order.setUsername(username);
        order.setNumber(number);
        order.setFoodName(foodName);
        order.setExtra(extra);
        order.setOrderCount(orderCount);
        order.setAddress(address);
        order.setMsg(msg );



		//UserDao userDao = new UserDaoImpl();
        if (userDao.addOrderr(order)) {
            response.sendRedirect("OrderPlaced.html?OrderPlaced=success");
        } else {
            response.sendRedirect("orderNow.jsp?error=1");
        }
}


}
