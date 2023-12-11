package com.jsp.bankManager.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.BankManager;
import com.jsp.service.BankManagerService;

@WebServlet("/managerHome")
public class BankManagerHome extends HttpServlet{
	
	BankManagerService bankManagerService = new BankManagerService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		String status = req.getParameter("status");
		String id = req.getParameter("id");
		
		int m_id = Integer.parseInt(id);
		
		BankManager bankManager = new BankManager();
		bankManager.setM_username(name);
		bankManager.setM_password(password);
		bankManager.setM_email(email);
		bankManager.setM_status(status);
		
		BankManager b1 = bankManagerService.getBankManagerById(m_id);
		if(b1 != null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("bank_manager_home.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("ManagerSignUp.jsp");
			requestDispatcher.forward(req, resp);
			
		}
	}

}
