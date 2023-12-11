package com.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.service.BankManagerService;

import javax.servlet.annotation.WebServlet;

@WebServlet("/del")
public class BankManagerDelete extends HttpServlet {

    BankManagerService bankManagerService = new BankManagerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean result = bankManagerService.deleteBankManagerById(id);
        if (result) {
        	 RequestDispatcher requestDispatcher = request.getRequestDispatcher("allManagers.jsp");
	            requestDispatcher.forward(request, response);
	        } else {
	        	RequestDispatcher requestDispatcher = request.getRequestDispatcher("deleteManager.jsp");
	            requestDispatcher.forward(request, response);
	            
	        }
	    }
	}