package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jsp.model.User;

public class UserDAO {

	static final String DB_URL = "jdbc:mysql://localhost:3306/learnerdb";
	static final String USER = "root";
	static final String PASS = "";

	private static final String SELECT_USER = "SELECT * FROM user_master where user_name =? and user_password =?";
	
	
	private static final String INSERT_USER = "INSERT INTO user_master (user_name, user_password, user_role, user_status)\r\n"
			+ "VALUES (?, ?, ?, ?);";

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

	public boolean getUserDetails(User user) {

		int count = 0;

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(SELECT_USER);) {

			String username = user.getUsername();
			String password = user.getPassword();

			stmt.setString(1, username);
			stmt.setString(2, password);
			System.out.println(stmt);
			ResultSet res = stmt.executeQuery();

			while (res.next()) {
				count = res.getInt(1);
			}
			System.out.println(count);
			
			
		} catch (SQLException e) {

			e.printStackTrace();

		}
		
		if(count>0) {
			return true;
		}else {
			return false;
		}

	}
	
	
	public boolean registerUserDetails(User user) {

		boolean a = false;

		try (Connection connection = getConnection();
				PreparedStatement stmt = connection.prepareStatement(INSERT_USER);) {

			String username = user.getUsername();
			String password = user.getPassword();
			int role =  user.getRole();
			String status = "A";
			
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setInt(3, role);
			stmt.setString(4, status);
			
			
			
			if (stmt.executeUpdate()>0) {
				a =true;
			}else {
				a = false;
			}
			
			
		} catch (SQLException e) {

			e.printStackTrace();

		}
		
		return a;
		
		

	}
	
	

}
