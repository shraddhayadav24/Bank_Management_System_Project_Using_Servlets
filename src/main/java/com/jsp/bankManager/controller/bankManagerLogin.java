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

@WebServlet("/ManagerSignUp")
public class bankManagerLogin extends HttpServlet {

	BankManagerService bankManagerService = new BankManagerService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String managerIdStr = req.getParameter("manager_id");
		String m_username = req.getParameter("manager_username");
		String m_password = req.getParameter("manager_password");
		int managerId = Integer.parseInt(managerIdStr);
		
		
		HttpSession bank_manager_httpSession=req.getSession();
		bank_manager_httpSession.setAttribute("managersessionid", managerIdStr);
		bank_manager_httpSession.setAttribute("managerusername", m_username);
		bank_manager_httpSession.setAttribute("managerpassword", m_password);

		if (bankManagerService.validateBankManager(managerId, m_username, m_password) == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("bank_manager_home.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("ManagerLogin.jsp");
			requestDispatcher.include(req, resp);
		}

	}
}





