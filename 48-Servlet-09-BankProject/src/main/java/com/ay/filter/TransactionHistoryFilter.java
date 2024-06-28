package com.ay.filter;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

import com.ay.bean.TransactionBean;
import com.ay.dao.TransactionHistoryDAO;

public class TransactionHistoryFilter extends HttpFilter implements Filter {

	private static final long serialVersionUID = 1L;

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

		String opt = req.getParameter("opt");

		TransactionHistoryDAO dao = new TransactionHistoryDAO();
		ArrayList<TransactionBean> transactions = new ArrayList<>();
		
		long accNo = 0;
		if ("sending".equals(opt)) {
			transactions = dao.sendingHistory(accNo);
		} 
		else if ("receiving".equals(opt)) {
			transactions = dao.receivingHistory(accNo);
		} 
		else  {
			transactions = dao.allTransactionHistory(accNo);
		}

		req.setAttribute("transactions", transactions);

		chain.doFilter(req, res);
	}

}
