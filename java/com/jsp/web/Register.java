package com.jsp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.UserDAO;
import com.jsp.model.User;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email-address");
		String password =  request.getParameter("password");
		String password1 = request.getParameter("password1");
	    int role = Integer.parseInt(request.getParameter("role"));
	    
	    if(password.equals(password1)) {
	    	User user = new User(email,password,password1,role);
		    UserDAO userdao = new UserDAO();
		    boolean x = userdao.registerUserDetails(user);
		    if(x == true) {
		    response.sendRedirect("login.jsp");
		    }else {
		    	response.sendRedirect("register.jsp");
		    }
	    }else{
	    	response.sendRedirect("login.jsp");
	    }
	    
		
	}


}
