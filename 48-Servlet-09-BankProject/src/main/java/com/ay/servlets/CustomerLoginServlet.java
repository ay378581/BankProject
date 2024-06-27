package com.ay.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ay.bean.CustomerBean;

public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession hs = req.getSession();
		CustomerBean cb = (CustomerBean) req.getAttribute("bean");
		hs.setAttribute("bean", cb);
		req.getRequestDispatcher("Welcome.jsp").include(req, res);
	}
}
