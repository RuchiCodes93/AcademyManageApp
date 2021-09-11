package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.model.Subject;

public class SubjectDAO {

	static final String DB_URL = "jdbc:mysql://localhost:3306/learnerdb";
	static final String USER = "root";
	static final String PASS = "";

	private static final String SELECT_ALL_SUBJECTS = "SELECT * FROM subject_master a";

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

	public List<Subject> getAllSubjects() {

		List<Subject> allSub = new ArrayList<>();
		

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_ALL_SUBJECTS);) {

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				int sub_id = rs.getInt("subject_id");
				String sub_name = rs.getString("subject_name");

				allSub.add(new Subject(sub_id, sub_name));

			}

		} catch (SQLException e) {
			e.printStackTrace();

		}
		System.out.println(allSub);

		return allSub;

	}

}
