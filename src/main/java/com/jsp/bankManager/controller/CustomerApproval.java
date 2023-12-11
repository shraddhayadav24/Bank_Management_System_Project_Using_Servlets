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

@WebServlet ("/updateCustomerStatus")
public class CustomerApproval extends HttpServlet {
	
	
	BankManagerService bankManagerService = new BankManagerService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession bank_manager_httpSession = req.getSession();
		String b_id = (String) bank_manager_httpSession.getAttribute("managersessionid");
		
		String manager_id = b_id;
		String customer_id = req.getParameter("customer_id");
		String status = req.getParameter("status");
		
		int manager_idNo = Integer.parseInt(manager_id); 
		int customer_idNo = Integer.parseInt(customer_id);
		
		boolean c = bankManagerService.approveCustomer(customer_idNo, manager_idNo, status);
		
		if(c == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("allCustomers.jsp");
			requestDispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("updateCustomerApprovalStatus.jsp");
			requestDispatcher.include(req, resp);
		}
	}

}