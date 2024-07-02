package com.ay.servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ay.bean.CustomerBean;
import com.ay.bean.TransactionBean;
import com.ay.dao.TransactionHistoryDAO;

public class TransactionHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession hs = req.getSession(false);
		CustomerBean cb = (CustomerBean) hs.getAttribute("bean");
		if (cb == null) {
			req.setAttribute("msg", "Session Expired");
			req.getRequestDispatcher("SignIn.jsp").include(req, res);
		} else {
			long accNo = cb.getAccNo();
			TransactionHistoryDAO dao = new TransactionHistoryDAO();
			ArrayList<TransactionBean> transactions = dao.sendingHistory(accNo);

			if (transactions.size() != 0) {
				req.setAttribute("history", transactions);
				System.out.println(transactions);
				req.getRequestDispatcher("TranHistory.jsp").include(req, res);
			} 
			else {
				req.setAttribute("msg", "No transactions found for the selected option.");
				req.getRequestDispatcher("TranHistory.jsp").include(req, res);
			}
			

		}
	}
}
