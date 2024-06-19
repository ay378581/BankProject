package com.ay.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ay.bean.CustomerBean;
import com.ay.dao.CustomerRegisterDAO;

public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		CustomerBean cb = new CustomerBean();
		cb.setAccNo(Long.parseLong(req.getParameter("accNo")));
		/*
		 * 
		 * 
		 * 
		 * 
		 * Complete My Team Member
		 * 
		 * 
		 * 
		 * 
		 */
		int k = new CustomerRegisterDAO().register(cb);
		if (k > 0)
			req.setAttribute("msg", "Register Successfully");
		else
			req.setAttribute("msg", "Failed To Register");

		req.getRequestDispatcher("index.html").include(req, res);

	}

}