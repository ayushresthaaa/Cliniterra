package com.cliniterra.util;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * @author Aayush Shrestha
 */
public class RedirectUtil{ 
	
	private static final String baseurl = "/WEB-INF/pages/";
	public static final String registerurl = baseurl + "registrationform.jsp";
	public static final String loginurl = baseurl + "login.jsp";
	public static final String homeurl = baseurl + "home.jsp";
	
	public void setMsgAttribute(HttpServletRequest req, String msgType, String msg) {
		req.setAttribute(msgType, msg);
	}
	
	public void redirectToPage(HttpServletRequest req, HttpServletResponse resp, String page)
			throws ServletException, IOException {
		req.getRequestDispatcher(page).forward(req, resp);
	}
	
	public void setMsgAndRedirect(HttpServletRequest req, HttpServletResponse resp, String msgType, String msg,
			String page) throws ServletException, IOException {
		setMsgAttribute(req, msgType, msg);
		redirectToPage(req, resp, page);
	}
}