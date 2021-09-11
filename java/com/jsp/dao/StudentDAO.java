package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.model.Student;
import com.jsp.model.Teacher;

public class StudentDAO {
	
	
	static final String DB_URL = "jdbc:mysql://localhost:3306/learnerdb";
	static final String USER = "root";
	static final String PASS = "";
	
	
	
	private static final String INSERT_STUDENT = "insert into student_master(student_first,student_last,"
			+ "student_age,student_address,student_phone,class_id) values (?,?,?,?,?,?)";

	private static final String SELECT_TEACHER_BY_ID = "SELECT a.student_id,a.student_first,a.student_last,a.student_age,a.student_address,\r\n"
			+ "a.student_phone,b.class_name\r\n"
			+ "FROM student_master a, class_master b\r\n"
			+ "WHERE a.class_id =b.class_id\r\n"
			+ "AND a.student_id = ?";
//
	private static final String SELECT_ALL_STUDENTS = "SELECT a.student_id,a.student_first,a.student_last, a.student_age,a.student_address,\r\n"
			+ "a.student_phone,b.class_name\r\n"
			+ "from  student_master a,class_master b \r\n"
			+ "WHERE a.class_id = b.class_id";
//
//	private static final String DELETE_TEACHER_SQL = "Delete from teacher_master where teacher_id =?";
//
	private static final String UPDATE_TEACHER_SQL = "update student_master set student_first = ? ,student_last = ? ,student_address =? ,student_age = ?,student_phone = ?,class_id = ? where student_id =?";
	
	

	protected Connection getConnection() {

		Connection connection = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(DB_URL, USER, PASS);

		} catch (SQLException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

		return connection;
	}
	
	public boolean insertStudent(Student student) {
		
		boolean succ = false;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(INSERT_STUDENT);) {

			stmt.setString(1, student.getFirstName());
			stmt.setString(2, student.getLastName());
			stmt.setInt(3,student.getAge());
			stmt.setString(4, student.getAddress());
			stmt.setString(5, student.getPhone());
			stmt.setInt(6,student.getClassName());
			//System.out.println(stmt);
			if(stmt.executeUpdate()>0) {
				succ = true;
			}else {
				succ = false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return succ;

	}
	
	
	public List<Student> getAllStudents() {

		List<Student> students = new ArrayList<>();

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_ALL_STUDENTS);) {

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				int s_id = rs.getInt("student_id");
				String f_name = rs.getString("student_first");
				String l_name = rs.getString("student_last");
				int s_age = rs.getInt("student_age");
				String s_address = rs.getString("student_address");
				String s_phone = rs.getString("student_phone");
				String s_class = rs.getString("class_name");

				students.add(new Student(s_id, f_name, l_name, s_age, s_address, s_phone,s_class));
			}
			//System.out.println(students);
		} catch (SQLException e) {
			e.printStackTrace();

		}
		
		return students;
		

	}
	
	
	public Student getStudent(int id) {

		Student t = null;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_TEACHER_BY_ID);) {

			stmt.setInt(1, id);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int s_id = rs.getInt("student_id");
				String f_name = rs.getString("student_first");
				String l_name = rs.getString("student_last");
				int s_age = rs.getInt("student_age");
				String s_add = rs.getString("student_address");
				String s_phone = rs.getString("student_phone");
				String s_details =rs.getString("class_name");
				

				t = new Student(s_id,f_name, l_name, s_age, s_add, s_phone,s_details);
				System.out.println(t.toString());
			}

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return t;

	}
	
	
	public boolean updateStudent(Student student) {

		boolean x = false;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(UPDATE_TEACHER_SQL);) {

			stmt.setString(1, student.getFirstName());
			stmt.setString(2, student.getLastName());
			stmt.setString(3, student.getAddress());
			stmt.setInt(4, student.getAge());
			stmt.setString(5, student.getPhone());
			stmt.setInt(6, student.getClassName());
			stmt.setInt(7, student.getStudentId());
			
			System.out.println(stmt);
			x = stmt.executeUpdate() > 0;
		} catch (SQLException | NumberFormatException e) {
			e.printStackTrace();

		}
		return x;

	}
	
	

}
