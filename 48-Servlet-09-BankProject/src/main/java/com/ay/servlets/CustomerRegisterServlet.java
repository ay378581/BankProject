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

		CustomerBean cb = (CustomerBean) req.getAttribute("bean");

		System.out.println("Servlet");

		int k = new CustomerRegisterDAO().register(cb);
		if (k > 0)
			req.setAttribute("msg", "Register Successfully");
		else
			req.setAttribute("msg", "Failed To Register");

		System.out.println("Servlet After DAO");
		System.out.println("Ashwaryan sharma");
		System.out.println("Ashwaryan sharma - 2");
		
		req.getRequestDispatcher("index.jsp").include(req, res);
	}

}
