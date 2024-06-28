package com.ay.servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ay.bean.TransactionBean;

public class TransactionHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ArrayList<TransactionBean> transactions = (ArrayList<TransactionBean>) req.getAttribute("transactions");

		if (transactions == null) {
			req.setAttribute("message", "No transactions found for the selected option.");
		} else {
			req.setAttribute("transactions", transactions);
		}

		req.getRequestDispatcher("TranHistory.jsp").include(req, res);
	}
}
