package com.jsp.web;

import java.io.IOException;
import com.jsp.model.User;
import com.jsp.dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email-address");
		String pass = request.getParameter("password");
		
		User user = new User(email,pass);
		UserDAO userdao = new UserDAO();
		boolean log = userdao.getUserDetails(user);
		System.out.println(log);
		if(log == true) {
			
		HttpSession session = request.getSession();
		session.setAttribute("uname", email);
			
		response.sendRedirect("Welcome.jsp");	
		}else{
			
		response.sendRedirect("login.jsp");	
		}
		
	}


}
