package com.cliniterra.filter;

import java.io.IOException;

import com.cliniterra.util.CookiesUtil;
import com.cliniterra.util.SessionUtil;

import jakarta.servlet.Filter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * @author Aayush Shrestha
 */
/**
 * Servlet implementation class AuthFilter
 */
@WebFilter(asyncSupported = true, urlPatterns = { "/*" })
public class AuthFilter implements Filter {
	private static final long serialVersionUID = 1L;
	private static final String Login = "/login";
	private static final String Register = "/registration";
	private static final String Home = "/home";
	private static final String Root = "/";
	private static final String FindDoc = "finddoctor";
	private static final String Contact = "contact";
	private static final String Aboutus = "aboutus";
	private static final String Viewprofile = "viewprofile"; 
	private static final String Viewdoctor = "viewdoctor";
	private static final String Book = "book";
	private static final String Viewappointment = "view";
	private static final String Dashboard = "/admindashboard";
	private static final String AddDoc = "/addDoc";
	private static final String AdminProfile = "/viewadminprofile";
	private static final String EditSchedule = "/editSchedule";
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	@Override
	public void init(FilterConfig config) throws ServletException {
		Filter.super.init(config);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain ) throws IOException, ServletException { 
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		String uri = req.getRequestURI(); 
		
		if (uri.endsWith(".css") || uri.endsWith(".jpg")|| uri.endsWith(".png") || uri.endsWith(".jpeg")) {
			chain.doFilter(req, res);
			return; 
		}
		
		boolean logstat = SessionUtil.getAt(req, "username") != null; 
		String role = CookiesUtil.get(req, "role") != null ? CookiesUtil.get(req, "role").getValue()
				: null;
		
		//if the admin is logged in 
		if ("admin".equals(role)) { 
			//if the url ends with this for admin send to dashboard
			if (uri.endsWith(Login) || uri.endsWith(Register)) {
				res.sendRedirect(req.getContextPath() + Dashboard);
				}
			else if(uri.endsWith(Dashboard) || uri.endsWith(AddDoc) || uri.endsWith(AdminProfile) || uri.endsWith(EditSchedule) || uri.endsWith("logout")) { 
				chain.doFilter(req, res);
			}
			else { 
				res.sendRedirect(req.getContextPath() + Dashboard);
				
			}
			}
			
		else if ("user".equals(role)) { 
			//if the url ends with this for login and register 
			if(uri.endsWith(Login)|| uri.endsWith(Register)) {
				res.sendRedirect(req.getContextPath() + Home);
			}
			else if (uri.endsWith(Home) || uri.endsWith(FindDoc)|| uri.endsWith(Viewdoctor)|| uri.endsWith(Aboutus) || uri.endsWith(Contact) || uri.endsWith(Book) || uri.endsWith(Contact) || uri.endsWith(Viewprofile) || uri.endsWith(Viewappointment) || uri.endsWith("logout")) {
				chain.doFilter(req, res);
			}
			else {
				res.sendRedirect(req.getContextPath() + Home);
			}
		}
		else { 
			if (uri.endsWith(Login)|| uri.endsWith(Register) || uri.endsWith(Root) || uri.endsWith(Home) || uri.endsWith(Aboutus) || uri.endsWith(Contact) ) {
				chain.doFilter(req, res);
			}
			else { 
				res.sendRedirect(req.getContextPath() + Login);
			}
		}
		
	}
	
	@Override
	public void destroy() { 
		Filter.super.destroy();
	}
}
