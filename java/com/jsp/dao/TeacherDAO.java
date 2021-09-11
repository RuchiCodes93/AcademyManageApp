package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.model.Teacher;

public class TeacherDAO {

	static final String DB_URL = "jdbc:mysql://localhost:3306/learnerdb";
	static final String USER = "root";
	static final String PASS = "";

	private static final String INSERT_TEACHER_SQL = "insert into teacher_master(teacher_name,teacher_subject,"
			+ "teacher_salary,teacher_age,teacher_address,class_id) values (?,?,?,?,?,?)";

	private static final String SELECT_TEACHER_BY_ID = "SELECT a.teacher_id,a.teacher_name,"
			+ "a.teacher_subject,b.subject_name,\r\n"
			+ "a.teacher_salary,a.teacher_age,a.teacher_address,a.class_id\r\n"
			+ "FROM teacher_master a,subject_master b\r\n"
			+ "WHERE a.teacher_subject = b.subject_id\r\n"
			+ "AND a.teacher_id =?";

	private static final String SELECT_ALL_TEACHERS = "SELECT a.teacher_id,a.teacher_name,b.subject_name,a.teacher_salary, a.teacher_age,a.teacher_address\r\n"
			+ "from  teacher_master a,subject_master b\r\n"
			+ "WHERE a.teacher_subject = b.subject_id";

	private static final String DELETE_TEACHER_SQL = "Delete from teacher_master where teacher_id =?";

	private static final String UPDATE_TEACHER_SQL = "update teacher_master set teacher_name = ? ,teacher_salary = ? "
			+ ",teacher_address =? ,class_id = ?,teacher_subject = ?"
			+ " where teacher_id =?";

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

	public void insertTeacher(Teacher teacher) {

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(INSERT_TEACHER_SQL);) {

			stmt.setString(1, teacher.getTeacher_name());
			stmt.setInt(2, teacher.getTeacher_subject());
			stmt.setDouble(3, teacher.getTeacher_salary());
			stmt.setInt(4, teacher.getTeacher_age());
			stmt.setString(5, teacher.getTeacher_address());
			stmt.setInt(6, teacher.getTeacher_class());

			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}

	public boolean updateTeacher(Teacher teacher) {

		boolean x = false;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(UPDATE_TEACHER_SQL);) {

			stmt.setString(1, teacher.getTeacher_name());
			stmt.setDouble(2, teacher.getTeacher_salary());
			stmt.setString(3, teacher.getTeacher_address());
			stmt.setInt(4, teacher.getTeacher_class());
			stmt.setInt(5, teacher.getTeacher_subject());
			stmt.setInt(6, teacher.getTeacher_id());
			System.out.println(stmt);
			x = stmt.executeUpdate() > 0;
		} catch (SQLException | NumberFormatException e) {
			e.printStackTrace();

		}
		return x;

	}

	public Teacher getTeacher(int id) {

		Teacher t = null;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_TEACHER_BY_ID);) {

			stmt.setInt(1, id);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int t_id = rs.getInt("teacher_id");
				String t_name = rs.getString("teacher_name");
				int t_subject = rs.getInt("teacher_subject");
				String subject_t = rs.getString("subject_name");
				Double t_sal = rs.getDouble("teacher_salary");
				int t_age = rs.getInt("teacher_age");
				String t_add = rs.getString("teacher_address");
				int t_class = rs.getInt("class_id");

				t = new Teacher(t_id,t_name, t_subject,subject_t, t_sal, t_age, t_add,t_class);
			}

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return t;

	}

	public List<Teacher> getAllTeachers() {

		List<Teacher> teachers = new ArrayList<>();

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_ALL_TEACHERS);) {

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				int t_id = rs.getInt("teacher_id");
				String t_name = rs.getString("teacher_name");
				String t_subject = rs.getString("subject_name");
				Double t_sal = rs.getDouble("teacher_salary");
				int t_age = rs.getInt("teacher_age");
				String t_add = rs.getString("teacher_address");

				teachers.add(new Teacher(t_id, t_name, t_subject, t_sal, t_age, t_add));
			}
			//System.out.println(teachers);
		} catch (SQLException e) {
			e.printStackTrace();

		}
		
		return teachers;
		

	}
	
	
	public boolean deleteTeacher(int id) {

		boolean x = false;
		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(DELETE_TEACHER_SQL);) {

			stmt.setInt(1, id);
			//System.out.println(stmt);
			 x = stmt.executeUpdate()>0;

		

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return x;

	}
	
	
	

}
