package com.ay.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

import com.ay.bean.CustomerBean;

public class CustomerLoginFilter extends HttpFilter {

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		String uname = req.getParameter("uname");
		String pword = req.getParameter("pword");

		chain.doFilter(req, res);
	}

}
