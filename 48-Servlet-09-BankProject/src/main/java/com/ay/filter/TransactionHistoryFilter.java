package com.ay.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;


public class TransactionHistoryFilter extends HttpFilter implements Filter {
       

	private static final long serialVersionUID = 1L;

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		
		
		String opt = req.getParameter("opt");
		
		if(opt.equals("sending"))
		{
			
		}else if(opt.equals("reciving")) {
			
		}else {
			
		}
		
		
		chain.doFilter(req, res);
	}


}
