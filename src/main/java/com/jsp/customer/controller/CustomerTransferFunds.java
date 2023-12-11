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

@WebServlet("/TransferFunds")
public class CustomerTransferFunds extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerService customerService=new CustomerService();
		
		HttpSession httpSession=req.getSession();
		String login_c_id=(String) httpSession.getAttribute("sessionid");
		String login_c_cusername=(String) httpSession.getAttribute("sessionname");
		String login_password=(String) httpSession.getAttribute("sessionpassword");
		int login_cust_Id = Integer.parseInt(login_c_id);
		Customer customer=customerService.getCustomerById(login_cust_Id);
		
		String Recipient_id=req.getParameter("c_transferId");
		String userName=req.getParameter("c_username");
		String password=req.getParameter("c_password");
		String amount=req.getParameter("c_amount");
		
		Integer recipientId=Integer.parseInt(Recipient_id);
		Integer amount_transfer=Integer.parseInt(amount);
		
		boolean verify_customer = customerService.transferMoneyById(login_cust_Id, recipientId, userName, password, amount_transfer);

		if (verify_customer == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerHomePage.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerTransferFunds.jsp");
			requestDispatcher.include(req, resp);
		}


	}
}
