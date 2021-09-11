package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.model.ClassDetails;

public class ClassDetailsDAO {
	
	static final String DB_URL = "jdbc:mysql://localhost:3306/learnerdb";
	static final String USER = "root";
	static final String PASS = "";

	private static final String SELECT_ALL_DETAILS= "SELECT b.class_name,a.student_first,a.student_last,a.student_phone,a.student_address,\r\n"
			+ "c.teacher_name,d.subject_name,c.teacher_address FROM student_master a,class_master b,teacher_master c,subject_master d\r\n"
			+ "WHERE a.class_id = b.class_id\r\n"
			+ "AND c.class_id = a.class_id\r\n"
			+ "AND c.teacher_subject = d.subject_id\r\n"
			+ "AND d.subject_id = ?"
			+ "AND a.class_id = ?";

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

	public List<ClassDetails> getAllDetails(String a ,String b) {

		List<ClassDetails> alldetails = new ArrayList<>();
		

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_ALL_DETAILS);) {

			stmt.setString(2, a);
			stmt.setString(1, b);
			System.out.println(stmt);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				String c_n = rs.getString("class_name");
				String s_f = rs.getString("student_first");
				String s_l = rs.getString("student_last");
				String s_p = rs.getString("student_phone");
				String s_a = rs.getString("student_address");
				String t_n = rs.getString("teacher_name");
				String s_n = rs.getString("subject_name");
				String t_a = rs.getString("teacher_address");

				alldetails.add(new ClassDetails(c_n, s_f,s_l,s_p,s_a,t_n,s_n,t_a));

			}

		} catch (SQLException e) {
			e.printStackTrace();

		}
		System.out.println(alldetails);

		return alldetails;

	}
	
	

}
