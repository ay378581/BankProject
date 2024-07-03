package com.ay.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ay.bean.CustomerBean;
import com.ay.dao.CustomerRegisterDAO;
import com.ay.mail.Mail;

public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		CustomerBean cb = (CustomerBean) req.getAttribute("bean");

		System.out.println("Servlet");

		int k = new CustomerRegisterDAO().register(cb);
		if (k > 0) {
			
			int q = new Mail().sendMail(cb);
			if(q > 0)
				req.setAttribute("msg", "Register Successfully and mail Sent to your Registered Mail Id");
			
			req.setAttribute("msg", "Register Successfully");
			req.getRequestDispatcher("SignIn.jsp").include(req, res);
		} else {

			req.setAttribute("msg", "Failed To Register");
			req.getRequestDispatcher("index.jsp").include(req, res);
		}
	}

}
