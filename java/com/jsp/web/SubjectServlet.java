package com.jsp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.jsp.dao.SubjectDAO;
import com.jsp.model.Subject;
import com.google.gson.*;


@WebServlet("/Subject")
public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SubjectDAO subjectdao;

	public SubjectServlet() {
		this.subjectdao = new SubjectDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Subject> subList = subjectdao.getAllSubjects();
		Gson json = new Gson();
		String subjectList = json.toJson(subList);
		response.setContentType("application/Json");
        response.getWriter().write(subjectList);
	

		System.out.println(subjectList);

	}

}
