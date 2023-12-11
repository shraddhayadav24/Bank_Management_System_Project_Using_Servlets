package com.jsp.customer.controller;

import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.Customer;
import com.jsp.service.CustomerService;


@WebServlet("/CustomerRegister")
public class RegisterCustomer extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CustomerService customerService = new CustomerService();
		
		String name = req.getParameter("c_name");
		String bdate = req.getParameter("c_bdate");
		String gender = req.getParameter("c_gender");
		String mob = req.getParameter("c_number");
		String add = req.getParameter("c_address");
		String uname = req.getParameter("c_username");
		String email = req.getParameter("c_email");
		String pwd = req.getParameter("c_password");
		
		Customer customer = new Customer();
		
		LocalDate date = LocalDate.parse(bdate);
		long num = Long.parseLong(mob);
		if (gender != null) {
//		    gender = gender.toLowerCase();
		    if (gender.equalsIgnoreCase("male") || gender.equalsIgnoreCase("female")) {
		        customer.setC_gender(gender);
		    }
		}
		
		customer.setC_name(name);
		customer.setC_birthdate(date);
		customer.setC_email(email);
		customer.setC_mobno(num);
		customer.setC_address(add);
		customer.setC_username(uname);
		customer.setC_password(pwd);
		
		
		Customer c1 = customerService.saveCustomer(customer);
		if (c1 != null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Home.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerregister.jsp");
			requestDispatcher.include(req, resp);
		}

	}

}

