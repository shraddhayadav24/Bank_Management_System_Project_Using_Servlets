package com.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.service.AdminService;

@WebServlet("/updateManagerStatus")
public class BankManagerApproval extends HttpServlet {

	AdminService adminService = new AdminService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession a_httpSession = req.getSession();
//		//session for admin
		String aid = (String) a_httpSession.getAttribute("sessionid");
		int adm_id = Integer.parseInt(aid);

		String admin_id = req.getParameter("admin_id");
		String manager_id = req.getParameter("manager_id");
		String status = req.getParameter("status");

		int admin_idNo = adm_id;
		int manager_idNo = Integer.parseInt(manager_id);

		boolean b = adminService.approval(admin_idNo, manager_idNo, status);

		if (b == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("allManagers.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("updateManagerApprovalStatus.jsp");
			requestDispatcher.include(req, resp);
		}

	}

}