package com.jsp.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dto.Customer;
import com.jsp.service.CustomerService;

@WebServlet("/CustomerSignUp")
public class LoginCustomer extends HttpServlet{

	CustomerService customerService=new CustomerService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String customerId = req.getParameter("c_id");
		String username = req.getParameter("c_username");
		String password = req.getParameter("c_password");
		int cust_Id = Integer.parseInt(customerId);

		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("sessionid", customerId);
		httpSession.setAttribute("sessionname", username);
		httpSession.setAttribute("sessionpassword", password);
			
		if(customerService.validateCustomer(cust_Id, username, password) == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerHomePage.jsp");
			requestDispatcher.forward(req, resp);
		}else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerlogin.jsp");
			requestDispatcher.forward(req, resp);
		}
	}
}


