package com.ay.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

import com.ay.dao.CustomerLoginDAO;

public class CustomerLoginFilter extends HttpFilter {

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		String uname = req.getParameter("uname");
		String pword = req.getParameter("pword");

		Long accNo = new CustomerLoginDAO().getAccNo(req);

		if (accNo == null) {
			req.setAttribute("msg", "Invalid Username/Password");
			req.getRequestDispatcher("Login.jsp").include(req, res);
		}
		else 
		{
			
		}
		chain.doFilter(req, res);
	}

}
