package com.jsp.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jsp.dao.ClassDetailsDAO;
import com.jsp.dao.StudentDAO;
import com.jsp.dao.TeacherDAO;
import com.jsp.model.ClassDetails;
import com.jsp.model.Student;
import com.jsp.model.Teacher;

@WebServlet("/")
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TeacherDAO teacherDao;
	private StudentDAO studentdao;
	private ClassDetailsDAO detailsdao;

	public TeacherServlet() {
		this.teacherDao = new TeacherDAO();
		this.studentdao = new StudentDAO();
		this.detailsdao = new ClassDetailsDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {

		case "/new":
			showNewForm(request, response);
			break;
		case "/insert":
			try {
				insertTeacher(request, response);
			} catch (SQLException e) {
				e.printStackTrace();

			}
			break;
		case "/studentInsert":

			try {
				insertStudent(request, response);
			} catch (SQLException e) {
				e.printStackTrace();

			}
			break;
		case "/delete":
			try {
				deleteTeacher(request, response);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/edit":
			try {
				showEditForm(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/editStudent":
			try {
				showEditStudentForm(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/update":
			try {
				updateTeacher(request, response);

			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
			
		case "/updateStudent":
			try {
				updateStudent(request, response);

			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;

		case "/newStudent":

			try {
				showNewStudentForm(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
		case "/classDetails":

			try {
				showClassDetailsForm(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
			
		case "/studentList":
			try {
				studentList(request, response);
			} catch (SQLException | IOException | ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
			
		case "/showWelcome":
			try {
				showHomePage(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
			
		case "/showClassDetails":
			try {
				getClassDetails(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
			try {
				listTeacher(request, response);
			} catch (SQLException | IOException | ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			break;
		}

	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
		dispatcher.forward(request, response);
	}

	private void insertTeacher(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {

		String t_name = request.getParameter("t_name");
		int t_sub = Integer.parseInt(request.getParameter("subjectName"));
		double t_sal = Double.parseDouble(request.getParameter("t_sal"));
		int t_age = Integer.parseInt(request.getParameter("t_age"));
		String t_address = request.getParameter("t_address");
		int t_class = Integer.parseInt(request.getParameter("t_class"));

		Teacher newteach = new Teacher(t_name, t_sub, t_sal, t_age, t_address,t_class);
		teacherDao.insertTeacher(newteach);
		response.sendRedirect("Welcome.jsp");

	}

	private void insertStudent(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {

		String f_name = request.getParameter("f_name");
		String l_name = request.getParameter("l_name");
		int s_age = Integer.parseInt(request.getParameter("s_age"));
		String s_address = request.getParameter("s_address");
		String s_phone = request.getParameter("s_phone");
		int s_class = Integer.parseInt(request.getParameter("s_class"));

		Student newstudent = new Student(f_name, l_name, s_age, s_address, s_phone,s_class);
		boolean x =studentdao.insertStudent(newstudent);
		if(x ==true) {
			System.out.println("Inserted");
		}else {
			System.out.println("Failed");
		}
		response.sendRedirect("Welcome.jsp");

	}

	private void deleteTeacher(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {

		int id = Integer.parseInt(request.getParameter("id"));
		teacherDao.deleteTeacher(id);
		response.sendRedirect("list");
	}

	private void updateTeacher(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {

		int id = Integer.parseInt(request.getParameter("id").trim());
		String t_name = request.getParameter("t_name");
		int t_sub = Integer.parseInt(request.getParameter("subjectName"));
		System.out.println(t_sub);
		double t_sal = Double.parseDouble(request.getParameter("t_sal"));
		int t_age = Integer.parseInt(request.getParameter("t_age"));
		String t_address = request.getParameter("t_address");
		int t_class = Integer.parseInt(request.getParameter("t_class"));

		Teacher upteach = new Teacher(id, t_name, t_sub, t_sal, t_age, t_address,t_class);
		System.out.println(upteach.toString());
		teacherDao.updateTeacher(upteach);
		response.sendRedirect("list");
	}
	
	
	private void updateStudent(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException,NumberFormatException {

		int id = Integer.parseInt(request.getParameter("id").trim());
		String f_name = request.getParameter("f_name").trim();
		String l_name = request.getParameter("l_name").trim();
		int s_age = Integer.parseInt(request.getParameter("s_age").trim());
		String s_address = request.getParameter("s_address").trim();
		String s_phone = request.getParameter("s_phone").trim();
		int s_class = Integer.parseInt(request.getParameter("s_class").trim());

		Student upStudent = new Student(id, f_name, l_name, s_age, s_address, s_phone,s_class);
		System.out.println(upStudent);
		studentdao.updateStudent(upStudent);
		response.sendRedirect("studentList");
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		Teacher existingTeacher = teacherDao.getTeacher(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
		request.setAttribute("teacher", existingTeacher);
		dispatcher.forward(request, response);

	}
	
	private void showEditStudentForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Student existingStudent = studentdao.getStudent(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("student-form.jsp");
		request.setAttribute("student", existingStudent);
		dispatcher.forward(request, response);

	}

	private void listTeacher(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Teacher> listTeacher = teacherDao.getAllTeachers();
		request.setAttribute("listTeacher", listTeacher);
		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-list.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void studentList(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Student> listStudent = studentdao.getAllStudents();
		request.setAttribute("listStudent", listStudent);
		RequestDispatcher dispatcher = request.getRequestDispatcher("student-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewStudentForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("student-form.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void showClassDetailsForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("class-details.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void showHomePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("Welcome.jsp");
		dispatcher.forward(request, response);
	}
	
	private void getClassDetails(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
		String class_name = request.getParameter("className");
		String sub_name = request.getParameter("classSubject");
		List<ClassDetails>  details = detailsdao.getAllDetails(class_name,sub_name);
		
		Gson json = new Gson();
		String detailsList = json.toJson(details);
		response.setContentType("application/json");
        response.getWriter().print(detailsList);

	}

}
