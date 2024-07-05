package com.ay.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

import com.ay.bean.CustomerBean;
import com.ay.dao.CustomerLoginDAO;

public class CustomerLoginFilter extends HttpFilter {

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		String uname = req.getParameter("uname");
		String pword = req.getParameter("pword");

		Long accNo = new CustomerLoginDAO().getAccNo(uname, pword);

		if (accNo == null) {
			req.setAttribute("msg", "Invalid Username/Password");
			CustomerBean cb = null;
			req.setAttribute("bean", cb);
		} else {
			CustomerBean cb = new CustomerLoginDAO().getAllInformation(accNo);
			cb.setAccNo(accNo);
			cb.setPass(pword);
			req.setAttribute("bean", cb);
		}
		chain.doFilter(req, res);
	}

}
