package com.jsp.bankManager.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.service.BankManagerService;

@WebServlet("/delCustomer")
public class CustomerDelete extends HttpServlet {
	BankManagerService bankManagerService = new BankManagerService();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		        String customer_id = req.getParameter("id");
		        int customer_idNo = Integer.parseInt(customer_id);

		        boolean c = bankManagerService.deleteCustomerById(customer_idNo);

		        if (c) {
		            RequestDispatcher requestDispatcher = req.getRequestDispatcher("allCustomers.jsp");
		            requestDispatcher.forward(req, resp);
		        } else {
		        	RequestDispatcher requestDispatcher = req.getRequestDispatcher("deleteCustomer.jsp");
		            requestDispatcher.forward(req, resp);
		            
		        }
		    }
		}