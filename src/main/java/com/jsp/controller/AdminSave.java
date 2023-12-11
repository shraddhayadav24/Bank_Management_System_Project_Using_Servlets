package com.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.Admin;
import com.jsp.dto.BankManager;
import com.jsp.service.AdminService;
import com.jsp.service.BankManagerService;

@WebServlet("/adminRegister")
public class AdminSave extends HttpServlet {

	AdminService adminService = new AdminService();
	BankManagerService bankManagerService = new BankManagerService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("a_username");
		String password = req.getParameter("a_password");

		Admin admin = new Admin();
		admin.setAdmin_name(username);
		admin.setA_password(password);
		// admin.setBankManager();

		Admin a = adminService.saveAdmin(admin);

		if (a != null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Home.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminregister.jsp");
			requestDispatcher.include(req, resp);
		}
	}
}
