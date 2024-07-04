package com.ay.servlets;

import java.io.IOException;

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
		if(k > 0)
		{
			CustomerBean cb = (CustomerBean)hs.getAttribute("bean");
			
		}
	}

}
