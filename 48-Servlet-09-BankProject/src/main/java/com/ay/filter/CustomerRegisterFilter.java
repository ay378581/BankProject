package com.ay.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

import com.ay.bean.CustomerBean;

public class CustomerRegisterFilter extends HttpFilter {

	private static final long serialVersionUID = 1L;

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		CustomerBean cb = new CustomerBean();

		cb.setAccNo(Long.parseLong(req.getParameter("accNo")));
		cb.setAccType(req.getParameter("actype"));
		cb.setCustName(req.getParameter("cname"));
		cb.setCustId(Integer.parseInt(req.getParameter("cid")));
		cb.setBal(Float.parseFloat(req.getParameter("bal")));
		cb.sethNo(req.getParameter("hno"));
		cb.setSname(req.getParameter("sn"));
		cb.setCty(req.getParameter("cty"));
		cb.setState(req.getParameter("st"));
		cb.setPin(Integer.parseInt(req.getParameter("pin")));
		cb.setMid(req.getParameter("mid"));
		cb.setPhone(Long.parseLong(req.getParameter("phone")));
		cb.setPass(req.getParameter("pass"));
		
		System.out.println("Filter");
		
		req.setAttribute("bean", cb);
		chain.doFilter(req, res);
	}

}
