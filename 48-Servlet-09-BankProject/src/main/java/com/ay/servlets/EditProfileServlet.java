package com.ay.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ay.bean.CustomerBean;
import com.ay.dao.EditProfileDAO;

public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

//		CustomerBean temp = new CustomerBean();
		HttpSession hs = req.getSession(false);

		int k = new EditProfileDAO().update(req);
		if (k > 0) {
			CustomerBean cb = (CustomerBean) hs.getAttribute("bean");

			cb.setCustName(req.getParameter("cname"));
			cb.setAccType(req.getParameter("actype"));
			cb.sethNo(req.getParameter("hno"));
			cb.setSname(req.getParameter("sn"));
			cb.setCty(req.getParameter("cty"));
			cb.setState(req.getParameter("st"));
			cb.setPin(Integer.parseInt(req.getParameter("pin")));
			cb.setMid(req.getParameter("mid"));
			cb.setPhone(Long.parseLong(req.getParameter("phone")));

			req.setAttribute("msg", "Profile Updated");
		} else {
			req.setAttribute("msg", "Failed to Edit");
		}
		RequestDispatcher rd = req.getRequestDispatcher("Welcome.jsp");
		rd.include(req, res);
	}

}
